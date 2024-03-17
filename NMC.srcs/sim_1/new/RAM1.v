`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2024 01:47:59
// Design Name: 
// Module Name: RAM1
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


module RAM1 (
  input wire clk, rst, wr, rd,
  input wire din0, din1, din2, din3, din4, din5, din6, din7,
  input wire [2:0] addr,
  output reg dout0, dout1, dout2, dout3, dout4, dout5, dout6, dout7
);

  reg [7:0] block [7:0];

  always @(posedge clk) begin
    if (rst) begin
       dout0 <= 1'b0;
       dout1 <= 1'b0;
       dout2 <= 1'b0;
       dout3 <= 1'b0;
       dout4 <= 1'b0;
       dout5 <= 1'b0;
       dout6 <= 1'b0;
       dout7 <= 1'b0;
    end
    else begin
      if (wr) begin
        block[addr] <= {din7, din6, din5, din4, din3, din2, din1, din0};
      end
      if (rd) begin
        {dout7, dout6, dout5, dout4, dout3, dout2, dout1, dout0} <= block[addr];
      end
    end
  end

endmodule


