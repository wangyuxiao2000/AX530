`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    lcd_test 
//
//////////////////////////////////////////////////////////////////////////////////
module lcd_disp(
			input        lcd_clk,
	      input        lcd_rst, 
         input        key1,			
	      input [95:0] ddr_data,        //DDR中的图像数据			
         
			output       lcd_dclk,
			output       lcd_hsync,
			output       lcd_vsync,
			output       lcd_de,
			output [7:0] lcd_r,
			output [7:0] lcd_g,
			output [7:0] lcd_b,
   //      output reg   ddr_addr_set,      //ddr读地址复位信号
			output       lcd_framesync,
	      output reg   ddr_rden,
			input        ddr_init_done

    );
	 
//-----------------------------------------------------------//
// 水平扫描参数的设定480*272 60Hz LCD
//-----------------------------------------------------------//
	parameter LinePeriod =525;           //行周期数
	parameter H_SyncPulse=41;            //行同步脉冲（Sync a）
	parameter H_BackPorch=2;             //显示后沿（Back porch b）
	parameter H_ActivePix=480;           //显示时序段（Display interval c）
	parameter H_FrontPorch=2;            //显示前沿（Front porch d）
	parameter Hde_start=43;
	parameter Hde_end=523;
  
//-----------------------------------------------------------//
// 垂直扫描参数的设定480*272 60Hz LCD
//-----------------------------------------------------------//
	parameter FramePeriod =286;           //列周期数
	parameter V_SyncPulse=10;             //列同步脉冲（Sync o）
	parameter V_BackPorch=2;              //显示后沿（Back porch p）
	parameter V_ActivePix=272;            //显示时序段（Display interval q）
	parameter V_FrontPorch=2;             //显示前沿（Front porch r）
	parameter Vde_start=12;
	parameter Vde_end=284;


  reg[10 : 0] x_cnt;
  reg[9 : 0]  y_cnt;
  reg[7 : 0] lcd_r_reg;
  reg[7 : 0] lcd_g_reg;
  reg[7 : 0] lcd_b_reg;  

  
  reg hsync_r;
  reg vsync_r; 
  reg vsync_de;
  reg hsync_de;
 
  reg [95:0] ddr_data_reg;               //ddr的输入数据存储
  reg  [1:0] sig_data;       
		  
  reg first_read;

//----------------------------------------------------------------
////////// 水平扫描计数
//----------------------------------------------------------------
always @ (posedge lcd_clk)
       if(1'b0)    x_cnt <= 1;
       else if(x_cnt == LinePeriod) x_cnt <= 1;
       else x_cnt <= x_cnt+ 1;
		 
//----------------------------------------------------------------
////////// 水平扫描信号hsync,hsync_de产生
//----------------------------------------------------------------
always @ (posedge lcd_clk)
   begin
       if(1'b0) hsync_r <= 1'b1;
       else if(x_cnt == 1) hsync_r <= 1'b0;             //产生hsync信号
       else if(x_cnt == H_SyncPulse) hsync_r <= 1'b1;
		 
		 		 
	    if(1'b0) hsync_de <= 1'b0;
       else if(x_cnt == Hde_start) hsync_de <= 1'b1;    //产生hsync_de信号
       else if(x_cnt == Hde_end) hsync_de <= 1'b0;	 

	end

//----------------------------------------------------------------
////////// 垂直扫描计数
//----------------------------------------------------------------
always @ (posedge lcd_clk)
       if(1'b0) y_cnt <= 1;
       else if(y_cnt == FramePeriod) y_cnt <= 1;
       else if(x_cnt == LinePeriod) y_cnt <= y_cnt+1;

//----------------------------------------------------------------
////////// 垂直扫描信号vsync, vsync_de产生
//----------------------------------------------------------------
always @ (posedge lcd_clk)
  begin
       if(1'b0) vsync_r <= 1'b1;
       else if(y_cnt == 1) vsync_r <= 1'b0;    //产生vsync信号
       else if(y_cnt == V_SyncPulse) vsync_r <= 1'b1;
		 
	    if(1'b0) vsync_de <= 1'b0;
       else if(y_cnt == Vde_start) vsync_de <= 1'b1;    //产生vsync_de信号
       else if(y_cnt == Vde_end) vsync_de <= 1'b0;	 
		 
  end
		 


//----------------------------------------------------------------
////////// 一帧图像之前提前产生一个ddr读数据
//---------------------------------------------------------------- 
always @(posedge lcd_clk)
begin
   if (lcd_rst) begin
	    first_read<=1'b0;
   end
   else begin
       if ((x_cnt==Hde_start-1'b1) && (y_cnt==Vde_start-1'b1))      //提前产生一个lcd显示数据
	        first_read<=1'b1;
		 else
		     first_read<=1'b0;		   
	end
end

//----------------------------------------------------------------
////////// ddr读请求信号产生程序	, 96bit的DDR数据转成4个像素输出
//---------------------------------------------------------------- 
 always @(negedge lcd_clk)
 begin
   if (lcd_rst && ~ddr_init_done) begin
		 ddr_data_reg<=32'd0;
		 lcd_r_reg<=8'd0;
		 lcd_g_reg<=8'd0;
		 lcd_b_reg<=8'd0;
		 sig_data<=2'b00;
		 ddr_rden<=1'b0;   
   end	
   else begin
	  if (first_read==1'b1) 
				 ddr_rden<=1'b1;                          //产生第一个数据读信号,让数据准备好     
     else if (hsync_de && vsync_de ) begin             //如果LCD输出有效的图像数据
	    if(sig_data==2'b00) begin                       //输出第1个像数(n=0,4,8...)
             lcd_b_reg<=ddr_data[95:88]; 
             lcd_g_reg<=ddr_data[87:80];
             lcd_r_reg<=ddr_data[79:72];
				 ddr_data_reg<=ddr_data;
				 ddr_rden<=1'b0;                           				 
				 sig_data<=sig_data + 1'b1;				 
		 end	
	    else if (sig_data==2'b01) begin	                 //输出第2个像数(n=1,5,9...) 
				 lcd_b_reg<=ddr_data_reg[71:64];
             lcd_g_reg<=ddr_data_reg[63:56];
             lcd_r_reg<=ddr_data_reg[55:48];						
				 ddr_rden<=1'b0;
				 sig_data<=sig_data + 1'b1;	
		 end
	    else if (sig_data==2'b10) begin	                //输出第3个像数(n=2,6,10...)
				 lcd_b_reg<=ddr_data_reg[47:40];
             lcd_g_reg<=ddr_data_reg[39:32];
             lcd_r_reg<=ddr_data_reg[31:24];	
			   // ddr_data_reg<=ddr_data;     						
				 ddr_rden<=1'b1;                           //ddr数据读请求	
				 sig_data<=sig_data + 1'b1;	
		 end	
	    else begin	                                    //输出第4个像数(n=3,7,11...)
				 lcd_b_reg<=ddr_data_reg[23:16];
             lcd_g_reg<=ddr_data_reg[15:8];
             lcd_r_reg<=ddr_data_reg[7:0];	
			   // ddr_data_reg<=ddr_data;                						
				 ddr_rden<=1'b0;
				 sig_data<=2'b00;	
		 end			 
     end		 
	  else begin
				lcd_b_reg<=8'd0;                    
            lcd_g_reg<=8'd0;
            lcd_r_reg<=8'd0;
				sig_data<=2'b00;	
				ddr_rden<=1'b0;
			   ddr_data_reg<=ddr_data;                     //ddr数据改变
	  end
	end
end



  assign lcd_hsync = hsync_r;
  assign lcd_vsync = vsync_r;  
  assign lcd_de = hsync_de && vsync_de;
  assign lcd_r = (hsync_de & vsync_de)?lcd_r_reg:8'h00;
  assign lcd_g = (hsync_de & vsync_de)?lcd_g_reg:8'h00;
  assign lcd_b = (hsync_de & vsync_de)?lcd_b_reg:8'h00;
  assign lcd_framesync=vsync_r;
  assign lcd_dclk = lcd_clk; 

endmodule
