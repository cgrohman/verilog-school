module HA(x,y,sum,cout);

input x,y;
output sum,cout;

xor xor1(sum,x,y);
and and1(cout,x,y);
endmodule