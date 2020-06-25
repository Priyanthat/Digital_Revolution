module mux2to1beh2(input x,y,s, output out);
		assign out = s ? x:y;
endmodule
