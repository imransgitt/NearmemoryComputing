`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2024 01:48:48
// Design Name: 
// Module Name: ALU_MINI
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

module ALU_MINI(
  input wire [1:0]A,B,wire [3:0]opcode,
  output reg [3:0] y_out
);


  always @(*) begin
    case (opcode)
      4'b1100: y_out =  A+B ;
      4'b0011: y_out =  A-B;
      4'b0110: y_out =  A*B;
      4'b1111: y_out =  A^B;
      default: y_out = 2'bzz;
    endcase
  end

endmodule

