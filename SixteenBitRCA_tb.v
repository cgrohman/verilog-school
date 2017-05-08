`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:51:45 05/08/2017
// Design Name:   SixteenBitRCA
// Module Name:   C:/Users/cmg128/Documents/verilog/adder/SixteenBitRCA_tb.v
// Project Name:  adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SixteenBitRCA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SixteenBitRCA_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg cin;

	// Outputs
	wire [15:0] Output;
	wire cout;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	SixteenBitRCA uut (
		.A(A), 
		.B(B), 
		.Output(Output), 
		.cout(cout), 
		.cin(cin)
	);
   integer outfile;
	initial begin
		A = 0;
		B = 0;
		cin = 0;
		#10
      for(i=0; i<1000; i=i+1) begin
			cin = $urandom%1;
			A = $urandom%10000;
			B = $urandom%10000;
			#50;
			$fdisplay(outfile,"%b,%b,%b,%b%b",A,B,cin,cout,Output);
		end
		$fclose(outfile);
		$finish;
	end
	
	initial begin
		$dumpfile("SixteenBitRCA_output.vcd");
		$dumpvars(0,RCA);
	end

	initial begin
		outfile = $fopen("./RCA_output.csv","w");
		$fdisplay(outfile,"A,B,Cin,CSum");
	end
      
endmodule

