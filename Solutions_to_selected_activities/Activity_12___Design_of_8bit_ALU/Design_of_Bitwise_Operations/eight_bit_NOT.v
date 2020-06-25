module eight_bit_NOT(R,A);
		input wire[0:7] A;
		output wire[0:7] R;
		
		not(R[0],A[0]);
		not(R[1],A[1]);
		not(R[2],A[2]);
		not(R[3],A[3]);
		not(R[4],A[4]);
		not(R[5],A[5]);
		not(R[6],A[6]);
		not(R[7],A[7]);
		
endmodule