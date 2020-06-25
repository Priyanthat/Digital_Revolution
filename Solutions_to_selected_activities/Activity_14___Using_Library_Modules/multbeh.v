module multbeh(x,y,z);
	input  [7:0]  x,y;
	output [15:0] z;
		assign z=x*y;
endmodule
	