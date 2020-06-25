module upcounter(clk,out);
		input clk;
		output reg[N-1:0] out;
		
		parameter N=16;
			always @(posedge clk)
				out <= out+1;
endmodule
