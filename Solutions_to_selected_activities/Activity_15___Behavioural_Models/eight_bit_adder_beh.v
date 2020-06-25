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



module eight_bit_adder_beh(S,A,B,clk);
		input  wire [7:0] A,B;
		input clk;
		wire[0:8] Y;
		output reg[8:0] S;
		
		wire w1,w2,w3,w4,w5,w6,w7;
		
		Half_Adder HA0(Y[0],w1,A[0],B[0]);
		Full_Adder FA1(Y[1],w2,A[1],B[1],w1);
		Full_Adder FA2(Y[2],w3,A[2],B[2],w2);
		Full_Adder FA3(Y[3],w4,A[3],B[3],w3);
		Full_Adder FA4(Y[4],w5,A[4],B[4],w4);
		Full_Adder FA5(Y[5],w6,A[5],B[5],w5);
		Full_Adder FA6(Y[6],w7,A[6],B[6],w6);
		Full_Adder FA7(Y[7],Y[8],A[7],B[7],w7);
		
		always @(posedge clk)
			S<=Y;
endmodule




		
		