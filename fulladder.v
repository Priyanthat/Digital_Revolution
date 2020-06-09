module fulladder(s,co,a,b,ci);

		input a,b,ci;
		output s,co;
		
		wire w1,w2,w3;
		
		xor(w1,a,b);
		and(w2,a,b);
		xor(s,ci,w1);
		and(w3,w1,ci);
		or(co,w2,w3);
		
endmodule
