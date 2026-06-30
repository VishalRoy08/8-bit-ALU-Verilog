`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2025 18:36:22
// Design Name: 
// Module Name: HA_8bit
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


module FA_8bit(
    input [7:0] a,
    input [7:0] b,
    input cin,
    output [7:0] outALU,
    output Cout 
    );
wire c1,c2,c3,c4,c5,c6,c7;
Full_Adder_using_Gate_Level d0 (a[0],b[0],cin,outALU[0],c1);
Full_Adder_using_Gate_Level d1 (a[1],b[1],c1,outALU[1],c2);
Full_Adder_using_Gate_Level d2 (a[2],b[2],c2,outALU[2],c3);
Full_Adder_using_Gate_Level d3 (a[3],b[3],c3,outALU[3],c4);
Full_Adder_using_Gate_Level d4 (a[4],b[4],c4,outALU[4],c5);
Full_Adder_using_Gate_Level d5 (a[5],b[5],c5,outALU[5],c6);
Full_Adder_using_Gate_Level d6 (a[6],b[6],c6,outALU[6],c7);
Full_Adder_using_Gate_Level d7 (a[7],b[7],c7,outALU[7],Cout);
endmodule
