`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:21:25 02/10/2016 
// Design Name: 
// Module Name:    FourBitRCA 
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
module FourBitRCA(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );

wire c_out[2:0];
wire b_c[3:0];

xor (b_c[0],b[0],cin);
xor (b_c[1],b[1],cin);
xor (b_c[2],b[2],cin);
xor (b_c[3],b[3],cin);

FA fa1(a[0],b_c[0],cin,sum[0],c_out[0]);
FA fa2(a[1],b_c[1],c_out[0],sum[1],c_out[1]);
FA fa3(a[2],b_c[2],c_out[1],sum[2],c_out[2]);
FA fa4(a[3],b_c[3],c_out[2],sum[3],cout);

endmodule
