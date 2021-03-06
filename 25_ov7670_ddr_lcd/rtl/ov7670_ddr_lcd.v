/*-------------------------------------------------------------------------
Filename			:		sd_ddr_vga.v
Description		:		read picture from sd, and store in ddr, display on VGA.
===========================================================================*/
`timescale 1ns / 1ps
module ov7670_ddr_lcd
(
	//global clock 50MHz
	input			clk,	
	input			key1,			   			//key1	
	input       rst_n,
	
	//ddr control
   output  [ 14: 0] mem_addr,				//ddr address
   output  [  2: 0] mem_ba,				//ddr bank address
   output           mem_cas_n,			//ddr column address strobe
   output  [  0: 0] mem_cke,		  	   //ddr clock enable
   inout   [  0: 0] mem_clk,		 	 	//ddr positive clock
   inout   [  0: 0] mem_clk_n, 		   //ddr negative clock  
   output  [  0: 0] mem_cs_n,				//ddr chip select
   output  [  1: 0] mem_dm,	    	   //ddr data enable (H:8)
   inout   [ 15: 0] mem_dq,       	   //ddr data
   inout   [  1: 0] mem_dqs,      	   //ddr data clock
   output  [  0: 0] mem_odt,      	   //ddr On-Die Termination
   output           mem_ras_n,			//ddr row address strobe
   output           mem_we_n,  			//ddr write enable
	
	//LCD port	
	output           lcd_dclk,          //lcd clock out
	output			  lcd_hs,			   //horizontal sync 
	output			  lcd_vs,			   //vertical sync
	output           lcd_de,            //lcd data enable
	output	[7:0]	  lcd_red,		      //LCD R data
	output	[7:0]	  lcd_green,		   //LCD G data
	output	[7:0]	  lcd_blue,		      //LCD B data
	
	//cmos interface
	output			  i2c_sclk,		 	   //cmos i2c clock
	inout			     i2c_sdat,		  		//cmos i2c data
	input			     camera_vsync,		//cmos vsync
	input			     camera_href,		   //cmos hsync refrence
	input			     camera_pclk,		   //cmos pxiel clock
	output			  camera_xclk,		   //cmos externl clock
	input	   [7:0]	  camera_data,	      //cmos data
	
	//led status indication
	output   [3:0]   led
	
);

assign camera_xclk=clk_cmos;         

assign led[0] = ~ddr_init_done;
assign led[1] = ~reg_conf_done;
assign led[2] = 1'b0;
assign led[3] = 1'b0;

//---------------------------------------------
wire	clk_lcd;		   					   //vga clock
wire	clk_cmos;								//cmos clock

system_ctrl	u_system_ctrl
(
	.clk				   (clk),			   //global clock  50MHZ
	.rst_n				(rst_n),		      //external reset

	.clk_c0				(clk_cmos),		   //24MHz camera clock
	.clk_c1				(clk_lcd)		   //9MHz lcd clock

);
 
//-------------------------------------
//Camera???????????????
wire reg_conf_done;
reg_config	reg_config_inst(
	.clk_25M                 (clk_cmos),    //25MHz camera clock
	.reset                   (~rst_n),	 	 //external reset   
	.i2c_sclk                (i2c_sclk),    //cmos i2c clock
	.i2c_sdat                (i2c_sdat),    //cmos i2c data
	.reg_conf_done           (reg_conf_done)//cmos register configure done
);

//-------------------------------------
//Camera????????????
wire        sys_we;
wire [31:0] sys_data_in;
wire        frame_switch;
wire        data_valid_wr;
camera_capture	camera_capture_inst(
	.rst_n                   (rst_n),	         //external reset  
	.init_done               (ddr_init_done & reg_conf_done),	   // init done
	.camera_pclk             (camera_pclk),	   //cmos pxiel clock
	.camera_href             (camera_href),	   //cmos hsync refrence
	.camera_vsync            (camera_vsync),		//cmos vsync
	.camera_data             (camera_data),      //cmos data
	.ddr_wren                (sys_we),           //ddr write enable
	.ddr_data_camera         (sys_data_in),      //ddr write data
	.data_valid_wr	          (data_valid_wr),	   //system data input enable			
	.frame_switch            (frame_switch)      //cmos frame switch       
	
);

//-------------------------------------
// lcd display
wire	         ddr_init_done;			   //ddr init done
wire           data_valid_rd;          //system data output enable 
wire           lcd_valid;
wire           sys_rd;                 //lcd ddr read data request
wire  [31:0]   sys_data_out;           //lcd ddr data
lcd_disp	lcd_disp_inst
(
	//global clock
	.lcd_clk			   (clk_lcd),			//lcd clock
	.lcd_rst				(~rst_n),		   //global reset
	
	//vga port
	.lcd_dclk         (lcd_dclk),       //lcd clock out
	.lcd_hsync			(lcd_hs),		   //lcd horizontal sync 
	.lcd_vsync			(lcd_vs),		   //lcd vertical sync
	.lcd_de           (lcd_de),		   //lcd data enable        
	.lcd_r			   (lcd_red),			//lcd red data	
	.lcd_g			   (lcd_green),		//lcd red data		
	.lcd_b			   (lcd_blue),			//lcd red data	

	//user interface
	.ddr_rden   		(sys_rd),			//lcd read enable
	.ddr_data  		   (sys_data_out),	//lcd data
	.lcd_framesync	   (data_valid_rd),  //lcd frame sync
	.lcd_valid	      (lcd_valid),      //lcd data output valid
	.ddr_init_done	   (ddr_init_done)	//ddr init done

);


//-------------------------------------
// ddr fifo control 
wire frame_write_done;
wire frame_read_done;
ddr_2fifo_top	ddr_2fifo_top_inst
(
	//global clock
	.source_clk			   (clk),			         //ddr reference clock
	.clk_read				(clk_lcd),		         //fifo read clock      
	.clk_write				(camera_pclk),	         //fifo write clock
	.ddr_init_done			(ddr_init_done),	      //ddr init done	
	.rst_n				   (rst_n),		            //global reset
	
	//ddr interface
	.mem_addr			   (mem_addr),		         //ddr address	
	.mem_ba			      (mem_ba),			      //ddr bank address
	.mem_cas_n		      (mem_cas_n),		      //ddr column address strobe
	.mem_cke			      (mem_cke),		         //ddr clock enable 	
	.mem_clk			      (mem_clk),		         //ddr positive clock	
	.mem_clk_n			   (mem_clk_n),		      //ddr negative clock 	
	.mem_cs_n			   (mem_cs_n),		         //ddr chip select		
	.mem_dm			      (mem_dm),		         //ddr data enable 	
	.mem_dq			      (mem_dq),		         //ddr data	
	.mem_dqs			      (mem_dqs),		         //ddr data clock	
	.mem_odt			      (mem_odt),		         //ddr On-Die Termination
	.mem_ras_n		      (mem_ras_n),		      //ddr row address strobe	
	.mem_we_n			   (mem_we_n),		         //ddr write enable
	
	//user interface
	.frame_write_done		(frame_write_done),	   //ddr write one frame
	.frame_read_done  	(frame_read_done),	   //ddr read one frame
	.sys_we	            (sys_we),               //fifo write enable
	.sys_data_in	      (sys_data_in),          //fifo data input	
	.sys_rd	            (sys_rd),	            //fifo read enable
	.sys_data_out	      (sys_data_out),	      //fifo data output
	.lcd_valid	         (lcd_valid),		      //lcd data valid
	.data_valid_rd	      (data_valid_rd),	      //lcd frame sync	
	.data_valid_wr	      (data_valid_wr),	      //cmos frame sync	
	.frame_switch        (frame_switch)          //cmos frame switch   
	
	
);



endmodule


