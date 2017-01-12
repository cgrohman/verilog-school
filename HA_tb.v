module HA_tb;

reg x;
reg y;
wire sum;
wire cout;

HA HA_uut(
	.x(x),
	.y(y),
	.sum(sum),
	.cout(cout)
	);

initial begin
	x = 1'b0;
	y = 1'b0;
	#20
	x = 1'b0;
	y = 1'b1;
	#20
	x = 1'b1;
	y = 1'b0;
	#20
	x = 1'b1;
	y = 1'b1;
	#20 $finish;
end

always begin
	$monitor("%b %b %b %b",x,y,sum,cout);
	#21;
end

initial begin
	$dumpfile("HA_output.vcd");
	$dumpvars(0,HA_uut);
end

