`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:39:52 02/10/2016
// Design Name:   FourBitRCA
// Module Name:   C:/Users/cmg128/Desktop/projects/FourBitRCA/FourBitRCA_tb.v
// Project Name:  FourBitRCA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FourBitRCA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FourBitRCA_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	reg [1:0] i;
	reg [4:0]j,k;
	
	// Outputs
	wire [3:0] sum;
	wire cout;

	integer outfile;

	// Instantiate the Unit Under Test (UUT)
	FourBitRCA RCA(
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;
		#10
      for(i=0; i<2; i=i+1) begin
			for(j=0;j<16;j=j+1)begin
				for(k=0;k<16;k=k+1)begin
					cin = i;
					a = j;
					b = k;
					#50;
					$fdisplay(outfile,"%b,%b,%b,%b%b",a,b,cin,cout,sum);
				end
			end
		end
	$fclose(outfile);
	$finish;
	end

	initial begin
	$dumpfile("FourBitRCA_output.vcd");
	$dumpvars(0,RCA);
	end

initial begin
	outfile = $fopen("./RCA_output.csv","w");
	$fdisplay(outfile,"A,B,Cin,CSum");
end
      
endmodule


