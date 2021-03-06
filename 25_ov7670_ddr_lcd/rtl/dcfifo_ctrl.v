`timescale 1 ns / 1 ns
module dcfifo_ctrl
(
	//global clock
	input				    clk_ref,		      //全局时钟
	input 			    clk_write,		      //fifo写数据时钟
	input				    clk_read,		      //fifo读数据时钟
	input 			    rst_n,			      //全局复位
	
	//burst length
	input		[9:0]	 	wr_length,		      //ddr读突发长度
	input		[9:0]	 	rd_length,		      //ddr写突发长度
	input		[24:0] 	wr_addr,		         //ddr写地址
	input		[24:0] 	wr_max_addr,	      //ddr最大写地址
	input		[24:0] 	rd_addr,		         //ddr读地址
	input		[24:0] 	rd_max_addr,	      //ddr最大读地址	
	input				 	rd_load,		         //ddr读地址参数置位
   input				 	wr_load,		         //ddr写地址参数置位
	
	//wrfifo:  fifo 2 sdram
	input 			 	wrf_wrreq,		      //写入ddr数据缓存fifo输入请求,作为fifo写信号
	input		[31:0] 	wrf_din,		         //写入ddr数据缓存fifo写入总线（写入sdram数据）
	output 	reg	 	ddr_wr_req,	         //写入ddr请求信号
	input 			 	ddr_wr_ack,	         //写入ddr响应信号,作为fifo读信号
	output	[31:0] 	ddr_din,		         //写入ddr数据缓存fifo输出数据总线
	output	reg	[24:0] 	ddr_wraddr,	   //写入ddr时地址暂存器，{bank[1:0],row[11:0],column[7:0]} 
   input             ddr_wr_finish,       //写入ddr数据完成
	
	//rdfifo: sdram 2 fifo
	input 				rdf_rdreq,		      //读取ddr数据缓存fifo输出请求
	output	[31:0] 	rdf_dout,		      //读取ddr数据缓存fifo输出总线（读取sdram数据）
	output 	reg			ddr_rd_req,	      //读取ddr请求信号
	input 				ddr_rd_ack,	         //读取ddr响应信号,作为fifo的输写有效信号
	input		[31:0] 	ddr_dout,		      //读取ddr数据缓存fifo输入数据
	output	reg	[24:0] 	ddr_rdaddr,	   //读取ddr时地址暂存器，{bank[1:0],row[11:0],column[7:0]} 
   input             ddr_rd_finish,       //读ddr数据完成
	
	//sdram address control	
	input				   ddr_init_done,	      //ddr初始化完成信号
	output	reg		frame_write_done,	   //ddr write one frame
	output	reg		frame_read_done,	   //ddr read one frame
	input             data_valid_wr, 		   //使能ddr写数据单元进行寻址或地址清零          
	input 				data_valid_rd			   //使能ddr读数据单元进行寻址或地址清零
);


//------------------------------------------------
//ͬ同步sdram读写地址初始值复位信号
reg	wr_load_r1, wr_load_r2;	
reg	rd_load_r1, rd_load_r2;	
always@(posedge clk_ref or negedge rst_n)
begin
	if(!rst_n)
		begin
		wr_load_r1 <= 1'b0;
		wr_load_r2 <= 1'b0;
		rd_load_r1 <= 1'b0;
		rd_load_r2 <= 1'b0;
		end
	else
		begin
		wr_load_r1 <= wr_load;
		wr_load_r2 <= wr_load_r1;
		rd_load_r1 <= rd_load;
		rd_load_r2 <= rd_load_r1;
		end
end
wire	wr_load_flag = ~wr_load_r2 & wr_load_r1;	//地址加载上升沿标志位
wire	rd_load_flag = ~rd_load_r2 & rd_load_r1;	//地址加载上升沿标志位

//------------------------------------------------
//ddr写地址产生模块（优先）
always @(posedge clk_ref or negedge rst_n)
begin
	if(!rst_n)
		begin
		ddr_wraddr <= 25'd0;	
		frame_write_done <= 1'b0;
		end			
	else if(wr_load_flag)						//加载ddr写入基地址
		begin
		ddr_wraddr <= wr_addr;	
		frame_write_done <= 1'b0;	
		end
	else if(~data_valid_w)						//显示无效期
		begin
		ddr_wraddr <= wr_addr;
		frame_write_done <= 0;
		end		
	else if(ddr_wr_finish)						//突发写入完毕
		begin
		if(ddr_wraddr < wr_max_addr - wr_length)
			begin
			ddr_wraddr <= ddr_wraddr + wr_length;   //ddr的地址增加
			frame_write_done <= 1'b0;
			end
		else
			begin
			ddr_wraddr <= ddr_wraddr;		//防止溢出，锁存地址
			frame_write_done <= 1'b1;
			end
		end
	else
		begin
		ddr_wraddr <= ddr_wraddr;			//锁存地址
		frame_write_done <= frame_write_done;
		end
end

//------------------------------------------------
//ddr读地址产生模块(其次)
always @(posedge clk_ref or negedge rst_n)
begin
	if(!rst_n)
		begin
		ddr_rdaddr <= 25'd0;
		frame_read_done <= 0;
		end
	else if(rd_load_flag)						//加载sdram读取基地址
		begin
		ddr_rdaddr <= rd_addr;
		frame_read_done <= 0;
		end
	else if(~data_valid_r)						//显示无效期
		begin
		ddr_rdaddr <= rd_addr;
		frame_read_done <= 0;
		end
	else if(ddr_rd_finish)						//突发写入完毕
		begin
		if(ddr_rdaddr < rd_max_addr - rd_length)
			begin
			ddr_rdaddr <= ddr_rdaddr + rd_length;
			frame_read_done <= 0;
			end
		else
			begin
			ddr_rdaddr <= ddr_rdaddr;		//防止溢出，锁存地址
			frame_read_done <= 1;
			end
		end
	else
		begin
		ddr_rdaddr <= ddr_rdaddr;			//锁存地址
		frame_read_done <= frame_read_done;
		end
end

//------------------------------------------------
//同步 读写ddr有效信号
reg	data_valid_r;
always@(posedge clk_ref or negedge rst_n)
begin
	if(!rst_n) 
		data_valid_r <= 1'b0;
	else 
		data_valid_r <= data_valid_rd;
end

//------------------------------------------------
//同步 读写ddr有效信号
reg	data_valid_w;
always@(posedge clk_ref or negedge rst_n)
begin
	if(!rst_n) 
		data_valid_w <= 1'b0;
	else 
		data_valid_w <= data_valid_wr;
end

//-------------------------------------
//ddr 读写信号产生模块
wire	[9:0] 	wrf_use;
wire	[9:0] 	rdf_use;
always@(posedge clk_ref or negedge rst_n)
begin
	if(!rst_n)	
		begin
		ddr_wr_req <= 0;
		ddr_rd_req <= 0;
		end
	else if(ddr_init_done == 1'b1)
		begin						      //写入优先，带宽内防止数据丢失
		if(wrf_use >= wr_length)	//写入FIFO的数据数量超过burst长度,写DDR开始	       
			begin					      //wrfifo满突发长度
			ddr_wr_req <= 1;		   //写sdarm使能
			ddr_rd_req <= 0;		   //读sdram空闲
			end
		else if(rdf_use < rd_length && data_valid_r == 1'b1)//读FIFO里的数据数量小于burst长度,读DDR开始	
			begin					     //rdfifo满突发长度
			ddr_wr_req <= 0;		  //写sdram空闲
			ddr_rd_req <= 1;		  //读sdram使能
			end
		else
			begin
			ddr_wr_req <= 0;		  //写sdram空闲
			ddr_rd_req <= 0;	  	  //读sdram空闲
			end
		end
	else
		begin
		ddr_wr_req <= 0;			  //写sdram空闲
		ddr_rd_req <= 0;			  //读sdram空闲
		end
end

//------------------------------------------------
//例化sdram写入数据缓存fifo模块
wrfifo	u_wrfifo
(
	//input 2 fifo
	.wrclk		(clk_write),		//wrfifo写时钟50MHz
	.wrreq		(wrf_wrreq),		//wrfifo写使能信号
	.data		   (wrf_din),			//wrfifo数据输入总线
	//fifo 2 ddr
	.rdclk		(~clk_ref),			//wrfifo读时钟166.7MHz
	.rdreq		(ddr_wr_ack),	   //wrfifo读使能信号
	.q			   (ddr_din),		   //wrfifo数据输出总线
	//user port
	.aclr		   (~rst_n | ~data_valid_w | wr_load_flag),			//wrfifo异步清零信号（很重要） 
	.rdusedw	   (wrf_use)			//wrfifo存储数据总量
);	

//------------------------------------------------
//例化sdram读出数据缓存fifo模块
rdfifo	u_rdfifo
(
	//sdram 2 fifo
	.wrclk		(clk_ref),       	//rdfifo写时钟100MHz
	.wrreq		(ddr_rd_ack),  	//rdfifo写使能信号
	.data		   (ddr_dout),  		//rdfifo数据输入总线
	//fifo 2 output 
	.rdclk		(clk_read),       //rdfifo读时钟50MHz
	.rdreq		(rdf_rdreq),     	//rdfifo读使能信号
	.q			   (rdf_dout),			//rrdfifo数据输出总线
	//user port
	.aclr		   (~rst_n | ~data_valid_r | rd_load_flag),		//rdfifo异步清零信号
	.wrusedw	   (rdf_use)        	//rrdfifo存储数据总量
);

endmodule
