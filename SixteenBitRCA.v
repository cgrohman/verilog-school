`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:58 05/08/2017 
// Design Name: 
// Module Name:    SixteenBitRCA 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module SixteenBitRCA(
    input [15:0] A,
    input [15:0] B,
    output [15:0] Output,
    output cout,
    input cin
    );

wire c4, c8, c12;

FourBitRCA m1(A[3:0],B[3:0],cin,Output[3:0],c4);
FourBitRCA m2(A[7:4],B[7:4],c4,Output[7:4],c8);
FourBitRCA m3(A[11:8],B[11:8],c8,Output[11:8],c12);
FourBitRCA m4(A[15:12],B[15:12],c12,Output[15:12],cout);

endmodule
