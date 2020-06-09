module exor(xor_output, input1,input2);
	input input1, input2;
	output xor_output;
	
	wire w1,w2,w3,w4;
	
	not(w1,input1);
	not(w2,input2);
	and(w3,input1,w2);
	and(w4,input2,w1);
	or(xor_output,w3,w4);
endmodule	