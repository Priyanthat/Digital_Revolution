module eight_bit_AND(R,A,B);
		input wire[0:7] A,B;
		output wire[0:7] R;
		
		and(R[0],A[0],B[0]);
		and(R[1],A[1],B[1]);
		and(R[2],A[2],B[2]);
		and(R[3],A[3],B[3]);
		and(R[4],A[4],B[4]);
		and(R[5],A[5],B[5]);
		and(R[6],A[6],B[6]);
		and(R[7],A[7],B[7]);
		
endmodule