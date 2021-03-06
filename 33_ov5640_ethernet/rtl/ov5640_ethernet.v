`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ov5640_ethernet 
//////////////////////////////////////////////////////////////////////////////////
module ov5640_ethernet(
   input                clk_50M,
	input                reset_n,
   output    [3:0]      led,               //led灯指示
	input                key1,

	//Camera接口信号
	output               camera_xclk,             //cmos externl clock
	output               camera_reset,
   output               camera_pwnd,
	
	input                camera_pclk,              //cmos pxiel clock
   input                camera_href,              //cmos hsync refrence
	input                camera_vsync,             //cmos vsync
	input     [7:0]      camera_data,              //cmos data
	output               i2c_sclk,                 //cmos i2c clock
	inout                i2c_sdat,  	              //cmos i2c data

	//千兆以太网接口信号	
	output               e_reset,	
   output               e_mdc,                      //MDIO的时钟信号，用于读写PHY的寄存器
	inout                e_mdio,                     //MDIO的数据信号，用于读写PHY的寄存器	
            
	input	               e_rxc,                      //125Mhz ethernet gmii rx clock
	input	               e_rxdv,	                   //GMII 接收数据有效信号
	input	               e_rxer,	                   //GMII 接收数据错误信号					
	input      [7:0]     e_rxd,                      //GMII 接收数据	      

	input	               e_txc,                      //25Mhz ethernet mii tx clock         
	output               e_gtxc,                     //25Mhz ethernet gmii tx clock  
	output               e_txen,                     //GMII 发送数据有效信号	
	output               e_txer,                     //GMII 发送数据错误信号					
	output     [7:0]     e_txd	                      //GMII 发送数据 	
		
    );


wire reg_conf_done;

wire [1:0] config_step;	
wire initial_en;

wire clk_125;

wire clock_20k;
wire ack;

wire camera_rstn;

assign e_gtxc=e_rxc;	 
assign e_reset = 1'b1; 

assign camera_xclk=camera_clk;
assign camera_reset=camera_rstn;


//////////////////////PLL时钟//////////////////////////////
  pll pll_inst
   (// Clock in ports
    .inclk0(clk_50M),         // IN
    // Clock out ports
    .c0(clk_125),       // 24Mhz
    .c1(camera_clk),     // 24Mhz
    // Status and control signals
    .areset(~reset_n),// IN
    .locked());      // OUT


////////////////上电延迟部分////////////////////
power_on_delay	power_on_delay_inst(
	.clk_50M                 (camera_clk),
	.reset_n                 (reset_n),	
	.camera_rstn             (camera_rstn),
	.camera_pwnd             (camera_pwnd),
	.initial_en              (initial_en)            //initial ov5640 register is allow		
);

//Camera初始化部分,Camera LED FLASH control//////////
reg_config reg_config_inst(
	.clk_25M                 (camera_clk),
	.camera_rstn             (camera_rstn),
	.initial_en              (initial_en),		
	.i2c_sclk                (i2c_sclk),
	.i2c_sdat                (i2c_sdat),
	.reg_conf_done           (reg_conf_done)        //ov5640 register configure is done

);


///////////////// /Camera采样部分////////////////
wire [11:0] camera_h_count;
wire [10:0] camera_v_count;
wire fifo_wr_en; 
wire fifo_rst;
camera_capture	camera_capture_inst(
	.reg_conf_done           (reg_conf_done),	
	.camera_pclk             (camera_pclk),
	.camera_href             (camera_href),
	.camera_vsync            (camera_vsync),
	.camera_data             (camera_data),
	.camera_h_count          (camera_h_count),	
	.camera_v_count          (camera_v_count),

	.fifo_wr_en              (fifo_wr_en),	
	.fifo_rst                (fifo_rst)
	
	
);

//////////////////// CMOS FIFO/////////////////// 
wire [10 : 0] fifo_data_count;
wire [7:0] fifo_data;
wire fifo_rd_en;
wire fifo_full;
wire fifo_empty;
cmos1_fifo cmos1_fifo_inst (
  .aclr                     (fifo_rst),   // input rst
  .wrclk                    (camera_pclk),                   // input wr_clk
  .data                     (camera_data),                   // input [7 : 0] din
  .wrreq                    (fifo_wr_en),                    // input wr_en
  
  .rdclk                    (e_rxc),                         // input rd_clk
  .rdreq                    (fifo_rd_en),                    // input rd_en
  .q                        (fifo_data),                     // output [7 : 0] dout
  .wrfull                   (fifo_full),                     // output full
  .rdempty                  (fifo_empty),                    // output empty
  .rdusedw                  (fifo_data_count),               // output [10 : 0] rd_data_count
  .wrusedw                  ()
);


/////////////////udp发送和接收程序/////////////////// 
udp udp_inst(
	.reset_n                 (camera_rstn),
	.e_rxc                   (e_rxc),
	.e_rxd                   (e_rxd),
   .e_rxdv                  (e_rxdv),
	.e_txen                  (e_txen),
	.e_txd                   (e_txd),
	.e_txer                  (e_txer),		
	
	.fifo_data               (fifo_data),           //FIFO读出的8bit数据/
	.fifo_data_count         (fifo_data_count),     //FIFO中的数据数量
   .fifo_rd_en              (fifo_rd_en),          //FIFO读使能 

	.frame_index             (camera_v_count), 

	.camera_href             (camera_href),	
	
	.tx_total_length         (16'd1052),            //发送IP包的总长度/
	.tx_data_length          (16'd1032)             //发送IP包的数据长度/		


	);

endmodule

