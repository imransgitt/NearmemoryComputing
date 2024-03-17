`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2024 01:49:36
// Design Name: 
// Module Name: NMC_tb
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



module NMC_tb();
reg clk;
reg rst;
reg wr;
reg rd;
reg din0;
reg din1;
reg din2;
reg din3;
reg din4;
reg din5;
reg din6;
reg din7;

reg [2:0]addr;
wire [3:0]y;

NMC n1 (.rd(rd),.wr(wr),.clk(clk),.rst(rst),
.din0(din0),.din1(din1),.din2(din2),.din3(din3),.din4(din4),.din5(din5),.din6(din6),.din7(din7),
.addr(addr),.y(y));

initial
begin
clk=1'b0;
rst=1'b1;
wr=1'b1;
din7=1'b1;
din6=1'b1;
din5=1'b1;
din4=1'b0;
din3=1'b1;
din2=1'b0;
din1=1'b1;
din0=1'b1;

addr=3'b011;

#20
rst=1'b0;
wr=1'b1;
rd=1'b1;
din7=1'b0;
din6=1'b1;
din5=1'b1;
din4=1'b0;
din3=1'b1;
din2=1'b0;
din1=1'b1;
din0=1'b1;


addr=3'b011;

#20
rst=1'b0;
wr=1'b1;
rd=1'b1;
din7=1'b0;
din6=1'b0;
din5=1'b0;
din4=1'b0;
din3=1'b0;
din2=1'b1;
din1=1'b0;
din0=1'b1;

addr=3'b001;

#20
rst=1'b0;
wr=1'b1;
rd=1'b1;

din7=1'b1;
din6=1'b1;
din5=1'b0;
din4=1'b0;
din3=1'b0;
din2=1'b1;
din1=1'b1;
din0=1'b1;

addr=3'b010;

#20
rst=1'b0;
wr=1'b1;
rd=1'b1;

din7=1'b1;
din6=1'b1;
din5=1'b1;
din4=1'b1;
din3=1'b0;
din2=1'b0;
din1=1'b1;
din0=1'b0;

addr=3'b111;



#500 $finish;

end
always #5 clk=~clk;
endmodule



