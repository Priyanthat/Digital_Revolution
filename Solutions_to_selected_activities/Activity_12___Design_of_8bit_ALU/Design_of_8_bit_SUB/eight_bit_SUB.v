 module Half_Adder(Sum,Carry_out,A,B);
		input A,B;
		output Sum,Carry_out;
		
		xor(Sum,A,B);
		and(Carry_out,A,B);
endmodule

module Full_Adder(Sum, Carry_out, A,B, Carry_in);
		input A,B, Carry_in;
		output Sum, Carry_out;
		
		
		wire w1,w2,w3;
		
				Half_Adder HA1(w1,w2,A,B);
				Half_Adder HA2(Sum,w3, Carry_in);
				or(Carry_out,w3,w2);
endmodule


module eight_bit_SUB(C0,S7,S6,S5,S4,S3,S2,S1,S0,A7,A6,A5,A4,A3,A2,A1,A0,B7,B6,B5,B4,B3,B2,B1,B0);
		input  A7,A6,A5,A4,A3,A2,A1,A0,B7,B6,B5,B4,B3,B2,B1,B0;
		output C0,S7,S6,S5,S4,S3,S2,S1,S0;
		
		wire w1,w2,w3,w4,w5,w6,w7;
		wire B0_,B1_,B2_,B3_,B4_,B5_,B6_,B7_;
		
		not(B0_, B0); not(B1_, B1); not(B2_, B2); not(B3_, B3); // Get the Compliment of B
		not(B4_, B4); not(B5_, B5); not(B6_, B6); not(B7_, B7);
		
		Full_Adder FA0(S0,w1,A0,B0_,1'b1);  // Add one
		Full_Adder FA1(S1,w2,A1,B1_,w1);
		Full_Adder FA2(S2,w3,A2,B2_,w2);
		Full_Adder FA3(S3,w4,A3,B3_,w3);
		Full_Adder FA4(S4,w5,A4,B4_,w4);
		Full_Adder FA5(S5,w6,A5,B5_,w5);
		Full_Adder FA6(S6,w7,A6,B6_,w6);
		Full_Adder FA7(S7,C0,A7,B7_,w7);

endmodule

