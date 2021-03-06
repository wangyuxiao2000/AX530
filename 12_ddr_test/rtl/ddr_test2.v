module ddr2_test(

	input  wire  source_clk,        //输入系统时钟50Mhz
	input rst_n,
	output err,                     //led1, 灯亮DDR读写正常, 灯灭DDR读写出错
   output  [ 14: 0] mem_addr,
   output  [  2: 0] mem_ba,
   output           mem_cas_n,
   output  [  0: 0] mem_cke,
   inout   [  0: 0] mem_clk,
   inout   [  0: 0] mem_clk_n,
   output  [  0: 0] mem_cs_n,
   output  [  1: 0] mem_dm,
   inout   [ 15: 0] mem_dq,
   inout   [  1: 0] mem_dqs,
   output  [  0: 0] mem_odt,
   output           mem_ras_n,
   output           mem_we_n  
);

parameter DATA_WIDTH = 32;           //总线数据宽度
parameter ADDR_WIDTH = 25;           //总线地址宽度

parameter IDLE = 3'd0;
parameter MEM_READ = 3'd1;
parameter MEM_WRITE  = 3'd2; 
reg[2:0] state;
reg[2:0] next_state;

//////////状态锁存///////////////
always@(posedge	phy_clk)
	begin
		if(~local_init_done)          //等待初始化成功
			state <= IDLE;
		else	
			state <= next_state;
	end
	
//////循环产生DDR Burst读,Burst写状态///////////
always@(*)
	begin 
		case(state)
			IDLE:
				next_state <= MEM_WRITE;  
			MEM_WRITE:                    //写入数据到DDR2
				if(wr_burst_finish)          
					next_state <= MEM_READ;
				else
					next_state <= MEM_WRITE;
			MEM_READ:                    //读出数据从DDR2
				if(rd_burst_finish)
					next_state <= MEM_WRITE;
				else
					next_state <= MEM_READ;
			default:
				next_state <= IDLE;
		endcase
end

reg  [ADDR_WIDTH - 1:0] wr_burst_addr;
wire [ADDR_WIDTH - 1:0] rd_burst_addr;
wire    wr_burst_data_req;
wire    rd_burst_data_valid;
reg  [9:0] wr_burst_len;
reg  [9:0] rd_burst_len;
reg     wr_burst_req;
reg     rd_burst_req;
reg  [9:0] wr_cnt;
reg  [9:0] rd_cnt;
wire [DATA_WIDTH - 1:0] wr_burst_data;
wire [DATA_WIDTH - 1:0] rd_burst_data;


//DDR的读写地址和DDR测试数据//
always@(posedge phy_clk)
	begin
		if(state == IDLE && next_state == MEM_WRITE)
			wr_burst_addr <= {ADDR_WIDTH{1'b0}};     //地址清零
		else if(state == MEM_READ && next_state == MEM_WRITE)                //一次Burst读写完成
			wr_burst_addr <= wr_burst_addr + {{(ADDR_WIDTH-8){1'b0}},8'd255}; //地址加burst长度255         
		else
			wr_burst_addr <= wr_burst_addr;           //锁存地址
	end
assign rd_burst_addr = wr_burst_addr;     
assign wr_burst_data = {(DATA_WIDTH/8){wr_cnt[7:0]}};     //写入DDR的数据

//产生burst写请求信号
always@(posedge phy_clk)
	begin
		if(next_state == MEM_WRITE && state != MEM_WRITE)
			begin
				wr_burst_req <= 1'b1;      //产生ddr burst写请求       
				wr_burst_len <= 10'd255;
				wr_cnt <= 10'd0;
			end
		else if(wr_burst_data_req)       //写入burst数据请求 
			begin
				wr_burst_req <= 1'b0;
				wr_burst_len <= 10'd255;
				wr_cnt <= wr_cnt + 10'd1;  //测试数据(每字节)加1
			end
		else
			begin
				wr_burst_req <= wr_burst_req;
				wr_burst_len <= 10'd255;
				wr_cnt <= wr_cnt;
			end
	end

//产生burst读请求信号	
always@(posedge phy_clk)
	begin
		if(next_state == MEM_READ && state != MEM_READ)
			begin
				rd_burst_req <= 1'b1;      //产生ddr burst读请求  
				rd_burst_len <= 10'd255;
				rd_cnt <= 10'd1;
			end
		else if(rd_burst_data_valid)     //检测到data_valid信号,burst读请求变0
			begin
				rd_burst_req <= 1'b0;
				rd_burst_len <= 10'd255;
				rd_cnt <= rd_cnt + 10'd1;
			end
		else
			begin
				rd_burst_req <= rd_burst_req;
				rd_burst_len <= 10'd255;
				rd_cnt <= rd_cnt;
			end
	end
	
assign err = rd_burst_data_valid &(rd_burst_data != {(DATA_WIDTH/8){rd_cnt[7:0]}});       //检查DDR读出的数据是否正确

wire	[ADDR_WIDTH - 1:0]	local_address;   
wire		local_write_req;
wire		local_read_req;
wire	[DATA_WIDTH - 1:0]	local_wdata;
wire	[DATA_WIDTH/8 - 1:0]	local_be;   
wire	[2:0]	local_size;
wire		local_ready;
wire	[DATA_WIDTH - 1:0]	local_rdata;
wire		local_rdata_valid;
wire		local_wdata_req;
wire		local_init_done;
wire		phy_clk;
wire		aux_full_rate_clk;
wire		aux_half_rate_clk;
wire     rd_burst_finish;
wire     wr_burst_finish;
//实例化mem_burst_v2
mem_burst_v2
#(
	.MEM_DATA_BITS(DATA_WIDTH)
)
mem_burst_m0(
	.rst_n(rst_n),
	.mem_clk(phy_clk),
	.rd_burst_req(rd_burst_req),
	.wr_burst_req(wr_burst_req),
	.rd_burst_len(rd_burst_len),
	.wr_burst_len(wr_burst_len),
	.rd_burst_addr(rd_burst_addr),
	.wr_burst_addr(wr_burst_addr),
	.rd_burst_data_valid(rd_burst_data_valid),
	.wr_burst_data_req(wr_burst_data_req),
	.rd_burst_data(rd_burst_data),
	.wr_burst_data(wr_burst_data),
	.rd_burst_finish(rd_burst_finish),
	.wr_burst_finish(wr_burst_finish),
	///////////////////
	.local_init_done(local_init_done),
	.local_ready(local_ready),
	.local_burstbegin(local_burstbegin),
	.local_wdata(local_wdata),
	.local_rdata_valid(local_rdata_valid),
	.local_rdata(local_rdata),
	.local_write_req(local_write_req),
	.local_read_req(local_read_req),
	.local_address(local_address),
	.local_be(local_be),
	.local_size(local_size)
);

//实例化ddr2.v
ddr2 ddr_m0(
	.local_address(local_address),
	.local_write_req(local_write_req),
	.local_read_req(local_read_req),
	.local_wdata(local_wdata),
	.local_be(local_be),
	.local_size(local_size),
	.global_reset_n(rst_n),
	//.local_refresh_req(1'b0), 
	//.local_self_rfsh_req(1'b0),
	.pll_ref_clk(source_clk),
	.soft_reset_n(1'b1),
	.local_ready(local_ready),
	.local_rdata(local_rdata),
	.local_rdata_valid(local_rdata_valid),
	.reset_request_n(),
	.mem_cs_n(mem_cs_n),
	.mem_cke(mem_cke),
	.mem_addr(mem_addr),
	.mem_ba(mem_ba),
	.mem_ras_n(mem_ras_n),
	.mem_cas_n(mem_cas_n),
	.mem_we_n(mem_we_n),
	.mem_dm(mem_dm),
	.local_refresh_ack(),
	.local_burstbegin(local_burstbegin),
	.local_init_done(local_init_done),
	.reset_phy_clk_n(),
	.phy_clk(phy_clk),
	.aux_full_rate_clk(),
	.aux_half_rate_clk(),
	.mem_clk(mem_clk),
	.mem_clk_n(mem_clk_n),
	.mem_dq(mem_dq),
	.mem_dqs(mem_dqs),
	.mem_odt(mem_odt)
	);
	
endmodule 

