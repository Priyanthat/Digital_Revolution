module two2one_mux(input1,input2,control,mux_output);

		input input1, input2, control;
		output mux_output;
		
		wire w1, w2, w3;
		
		not(w1,control);
		and(w2, input1, control);
		and(w3, input2, w1);
		or(mux_output,w2,w3);

endmodule
