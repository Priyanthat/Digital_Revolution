module twobitcomp(G,E,L,A,B); // G = A>B, E =(A=B), L = A<B
		input wire[0:1] A,B;
		output G,L,E;
		
		wire[0:1] A_,B_;
		wire[0:15] w;
		
		not(A_[0],A[0]); not(A_[1],A[1]);
		not(B_[0],B[0]); not(B_[1],B[1]);
		
		and(w[0],B_[1],B_[0],A_[1],A_[0]); // E
		and(w[1],B_[1],B_[0],A_[1],A[0]);  // G
		and(w[2],B_[1],B_[0],A[1],A_[0]);  // G
		and(w[3],B_[1],B_[0],A[1],A[0]);   // G
		and(w[4],B_[1],B[0],A_[1],A_[0]);  // L
		and(w[5],B_[1],B[0],A_[1],A[0]);   // E
		and(w[6],B_[1],B[0],A[1],A_[0]);   // G
		and(w[7],B_[1],B[0],A[1],A[0]);    // G
		and(w[8],B[1],B_[0],A_[1],A_[0]);  // L
		and(w[9],B[1],B_[0],A_[1],A[0]);   // L
		and(w[10],B[1],B_[0],A[1],A_[0]);  // E
		and(w[11],B[1],B_[0],A[1],A[0]);   // G
		and(w[12],B[1],B[0],A_[1],A_[0]);  // L
		and(w[13],B[1],B[0],A_[1],A[0]);   // L
		and(w[14],B[1],B[0],A[1],A_[0]);   // L
		and(w[15],B[1],B[0],A[1],A[0]);    // E
	
		or(G, w[1],w[2],w[3],w[6],w[7],w[11]);
		or(L, w[4],w[8],w[9],w[12],w[13],w[14]);
		or(E, w[0],w[5],w[10],w[15]);
		
endmodule

		
		