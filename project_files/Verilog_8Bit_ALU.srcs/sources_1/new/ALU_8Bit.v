`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2025 17:32:00
// Design Name: 
// Module Name: ALU_8Bit
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


module ALU_8Bit(
    input [2:0] Opcode,
    input [7:0] a,
    input [7:0] b,
    output reg [15:0] outALU
    );



always @(*)
begin
case(Opcode)
3'b000: outALU=a+b;
3'b001: outALU=a-b;
3'b010: outALU=a*b;
3'b011: outALU=a>>b;
3'b100: outALU=a<<b;
3'b101: outALU=a&b;
3'b110: outALU=a|b;
3'b111: outALU=a^b;
default: outALU=16'b0;
endcase
end

endmodule
