module ALU(Z, X, Y, S);
		input  wire[0:7] X,Y;
		input  wire[0:2] S;
		output wire[0:7] Z;
		
		wire[0:7] L0,L1,L2,L3,L4,L5,L6,L7;
		
		Eight_bit_NOT  LU0(L0,X);
		Eight_bit_OR   LU1(L1,X,Y);
		Eight_bit_AND  LU2(L2,X,Y);
		Eight_bit_XOR  LU3(L3,X,Y);
		
		Eight_bit_Adder  LU4(L4,X,Y);
		Eight_bit_Sub    LU5(L5,X,Y);
		Eight_bit_Comp   LU6(L6,X,Y);
		Four_bit_Mult    LU7(L7,X,Y);
		
		ALU_Mux          M(Z,S,L0,L1,L2,L3,L4,L5,L6,L7);
		
endmodule


		
		