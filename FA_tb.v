module FA_tb;

reg A;
reg B;
reg Cin;
reg [1:0] i,j,k;


wire S;
wire Cout;

FA FA_uut(
	.A(A),
	.B(B),
	.Cin(Cin),
	.S(S),
	.Cout(Cout)
	);

initial begin
	A = 0;
	B = 0;
	Cin = 0;

	for(i=0;i<2;i=i+1)begin
		for(j=0;j<2;j=j+1)begin
			for(k=0;k<2;k=k+1)begin
				Cin = i;
				A = j;
				B = k;
				#20;
			end
		end
	end
$finish;
end

initial begin
	$dumpfile("FA_output.vcd");
	$dumpvars(0,FA_uut);
end
endmodule
