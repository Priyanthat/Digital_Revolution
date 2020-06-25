
module four2one_mux(x1,x2,x3,x4,s1,s2,x);

		input x1,x2,x3,x4,s1,s2;
		output x;
		
		wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;
		
		not(w1,s1);
		not(w2,s2);
		
		and(w3,w1,w2,x1);
		//and(w4,w3,x1);
		
		and(w4,w2,s1,x2);
		//and(w6,w5,x2);
		
		and(w5,s2,w1,x3);
		//and(w8,w7,x3);
		
		and(w6,s2,s1,x4);
		//and(w10,w9,x4);
		
		//or(w11,w4,w6);
		//or(w12,w8,w10);
		or(mux_output,w3,w4,w5,w6);
		
endmodule
		