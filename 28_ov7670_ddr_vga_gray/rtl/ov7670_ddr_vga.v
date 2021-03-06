/*-------------------------------------------------------------------------
Filename			:		sd_ddr_vga.v
Description		:		read picture from sd, and store in ddr, display on VGA.
===========================================================================*/
`timescale 1ns / 1ps
module ov7670_ddr_vga
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
	
	//VGA port	
	output			  vga_hs,			   //horizontal sync 
	output			  vga_vs,			  	//vertical sync
	output	[4:0]	  vga_red,		 	   //VGA R data
	output	[5:0]	  vga_green,		 	//VGA G data
	output	[4:0]	  vga_blue,			   //VGA B data
	
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
wire	clk_vga;		   					   //vga clock
wire	clk_cmos;								//cmos clock

system_ctrl	u_system_ctrl
(
	.clk				   (clk),			   //global clock  50MHZ
	.rst_n				(rst_n),		      //external reset

	.clk_c0				(clk_cmos),		   //24MHz camera clock
	.clk_c1				(clk_vga)		   //25MHz vga clock

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
// vga display
wire	         ddr_init_done;			   //ddr init done
wire			   sys_rd; 						//rdfifo read enable
wire	[31:0]	sys_data_out; 				//rdfifo read data 
wire           data_valid_rd;          //system data output enable  
wire [4:0] vga_r;
wire [5:0] vga_g;
wire [4:0] vga_b;
wire vga_hsync;
wire vga_vsync;
wire vga_de; 
vga_disp	vga_disp_inst
(
	//global clock
	.vga_clk			   (clk_vga),			//vga clock
	.vga_rst				(~rst_n),		   //global reset
	.key1				   (key1),	         //key1 input 
	
	//vga port
	.vga_hsync			(vga_hsync),		   //vga horizontal sync 
	.vga_vsync			(vga_vsync),		   //vga vertical sync
	.vga_de			   (vga_de),		      //vga data enable	
	.vga_r			   (vga_r),			      //vga red data	
	.vga_g			   (vga_g),		         //vga red data		
	.vga_b			   (vga_b),			      //vga red data	

	//user interface
	.ddr_rden   		(sys_rd),			//vga read enable
	.ddr_data  		   (sys_data_out),	//vga data
	.vga_framesync	   (data_valid_rd),  //vga frame sync
	.vga_valid	      (vga_valid),		//vga data valid
	.ddr_init_done	   (ddr_init_done),	//ddr init done

);


// rgb_to_ycbcr???RGB?????????YCbCr
wire [7:0] yuv_y;
wire [7:0] yuv_cb;
wire [7:0] yuv_cr;
assign vga_red=yuv_y[7:3];
assign vga_green=yuv_y[7:2];
assign vga_blue=yuv_y[7:3];


rgb_to_ycbcr rgb_to_ycbcr_m0(
	.clk(clk_vga),
	.i_r_8b({vga_r[4:0],3'b0}),
	.i_g_8b({vga_g[5:0],2'b00}),
	.i_b_8b({vga_b[4:0],3'b0}),
  						
	.i_h_sync(vga_hsync),
	.i_v_sync(vga_vsync),
	.i_data_en(vga_de),
						
	.o_y_8b(yuv_y),
	.o_cb_8b(yuv_cb),
	.o_cr_8b(yuv_cr),
						
	.o_h_sync(vga_hs),
	.o_v_sync(vga_vs),                                                                                                  
	.o_data_en());


//-------------------------------------
// ddr fifo control 
wire frame_write_done;
wire frame_read_done;
ddr_2fifo_top	ddr_2fifo_top_inst
(
	//global clock
	.source_clk			   (clk),			         //ddr reference clock
	.clk_read				(clk_vga),		         //fifo read clock      
	.clk_write				(camera_pclk),	      //fifo write clock
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
	.vga_valid	         (vga_valid),		      //vga data valid
	.data_valid_rd	      (data_valid_rd),	      //vga frame sync	
	.data_valid_wr	      (data_valid_wr),	      //cmos frame sync	
	.frame_switch        (frame_switch)          //cmos frame switch   
	
	
);



endmodule


