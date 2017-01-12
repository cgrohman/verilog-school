module FA (input A,B,Cin,output S,Cout);

wire has,hac,ha2c;

HA ha1(A,B,has,hac);
HA ha2(Cin,has,S,ha2c);
or or1(Cout,hac,ha2c);

endmodule
