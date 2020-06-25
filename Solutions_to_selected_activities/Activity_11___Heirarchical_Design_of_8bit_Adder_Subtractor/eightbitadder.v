module eightbitadder(s,a,b);

		input wire[0:7] a,b;
		output wire[0:8] s;
		
		wire w[0:6];
		
		halfadder(s[0],w[0],a[0],b[0]);
		fulladder(s[1],w[1],a[1],b[1],w[0]);
		fulladder(s[2],w[2],a[2],b[2],w[1]);
		fulladder(s[3],w[3],a[3],b[3],w[2]);
		fulladder(s[4],w[4],a[4],b[4],w[3]);
		fulladder(s[5],w[5],a[5],b[5],w[4]);
		fulladder(s[6],w[6],a[6],b[6],w[5]);
		fulladder(s[7],s[8],a[7],b[7],w[6]);

endmodule
