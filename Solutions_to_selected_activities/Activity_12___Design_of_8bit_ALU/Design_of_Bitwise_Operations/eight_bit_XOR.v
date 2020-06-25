module eight_bit_XOR(R,A,B);
		input wire[0:7] A,B;
		output wire[0:7] R;
		
		xor(R[0],A[0],B[0]);
		xor(R[1],A[1],B[1]);
		xor(R[2],A[2],B[2]);
		xor(R[3],A[3],B[3]);
		xor(R[4],A[4],B[4]);
		xor(R[5],A[5],B[5]);
		xor(R[6],A[6],B[6]);
		xor(R[7],A[7],B[7]);
		
endmodule
		