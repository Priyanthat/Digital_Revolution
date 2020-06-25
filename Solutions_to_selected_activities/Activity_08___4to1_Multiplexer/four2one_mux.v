module four2one_mux(x1,x2,x3,x4,s1,s2,x);

		input x1,x2,x3,x4,s1,s2;
		output x;
		
		wire w1,w2,w3,w4,s1_,s2_;
		
		not(s1_,s1);
		not(s2_,s2);
		
		and(w1,x1,s2_,s1_);
		and(w2,x2,s2_,s1);
		and(w3,x3,s2,s1_);
		and(w4,x4,s2,s1);
		
		or(mux_output,w1,w2,w3,w4);
		
endmodule
