module clkdiv(clkin, clkout);
			input clkin;
			output clkout;
			
			reg[N-1:0] C;
			parameter N=32;
			
			//N > round(log2(50000000)+1);
			
			always @(C)
			if(C-50000000)
					C<=C+1;
			else
					C<=0;
endmodule


module upcntr(clk,out);
		input clk;
		output reg[N-1:0] out;
		parameter N;
				always @(posedge clk)
					  out<=out+1;
endmodule

			
module clock1Hz(clkin,a,b,c,d,e,f,g);
		input clkin;
		output a,b,c,d,e,f,g;
		wire clkout;
		
		clkdiv CLD(clkin,clkout);
		upcntr #(4) cnt(clkout,out);
		BCD2sevenseg DPL(a,b,c,d,e,f,g,out);
		
endmodule
		
		
		
		