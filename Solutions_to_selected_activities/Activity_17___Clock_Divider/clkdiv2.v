module clkdiv2(input clk, output reg[0:7] out);
		always @(posedge clk)
				out <= ~out;
endmodule
