module mux2to1beh(x,y,s,out);
	input x,y,s;
	output reg out;
	always @(s,x,y)
		if(s)
			out<=x;
		else
			out<=y;
endmodule
