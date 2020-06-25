module eight_bit_COMP(F,A,B); // F-Flag => XXXXXGEL
		input  wire[0:7] A,B;
		output wire[0:7] F;
		
		wire msb,msb_, rest,rest_;
		wire[0:8] D;
		
		not(msb_,msb);
		not(rest_,rest);
		
		eight_bit_SUB(D,A,B);
		assign msb = D[7];
		or(rest,D[6],D[5],D[4],D[3],D[2],D[1],D[0]);
		
		and(F[2],msb_,rest);
		and(F[1],msb_,rest_);
		and(F[0],msb,rest);
		
		assign F[3:7] = 5'b0;
		
endmodule

		
		
		
		