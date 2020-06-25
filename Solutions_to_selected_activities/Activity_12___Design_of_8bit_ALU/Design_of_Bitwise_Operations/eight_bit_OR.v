module eight_bit_OR(R,A,B);
		input wire[0:7] A,B;
		output wire[0:7] R;
		
		or(R[0],A[0],B[0]);
		or(R[1],A[1],B[1]);
		or(R[2],A[2],B[2]);
		or(R[3],A[3],B[3]);
		or(R[4],A[4],B[4]);
		or(R[5],A[5],B[5]);
		or(R[6],A[6],B[6]);
		or(R[7],A[7],B[7]);
		
endmodule
		