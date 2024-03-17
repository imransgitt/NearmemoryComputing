`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2024 01:47:15
// Design Name: 
// Module Name: NMC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module NMC(input wire clk,rst,rd,wr, din0,din1,din2,din3,din4,din5,din6,din7,
[2:0]addr, output wire [6:0]seg,[3:0]an);


wire dout0;
wire dout1;
wire dout2;
wire dout3;
wire dout4;
wire dout5;
wire dout6;
wire dout7;
wire [3:0] data;


RAM1 r1(.rd(rd), .wr(wr), .clk(clk), .rst(rst),
 .din0(din0),.din1(din1),.din2(din2),.din3(din3),.din4(din4),.din5(din5),.din6(din6),.din7(din7),
  .addr(addr),.dout0(dout0),.dout1(dout1),.dout2(dout2),.dout3(dout3),.dout4(dout4),.dout5(dout5),.dout6(dout6),.dout7(dout7));
ALU_MINI a1(.A({dout0,dout1}),.B({dout2,dout3}),.opcode({dout4,dout5,dout6,dout7}), .y_out(data));

seven_segment d1(.data(data),.seg(seg));

assign an=4'b1110;

endmodule

