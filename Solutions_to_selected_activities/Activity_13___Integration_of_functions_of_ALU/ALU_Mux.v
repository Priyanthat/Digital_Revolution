module two2one_mux(input1,input2,control,mux_output);

		input input1, input2, control;
		output mux_output;
		
		wire w1, w2, w3;
		
		not(w1,control);
		and(w2, input1, control);
		and(w3, input2, w1);
		or(mux_output,w2,w3);

endmodule


module eightx2eight_mux(x,y,s,z);

		input wire[0:7] x,y;
		input s;
		output wire[0:7] z;
		
		two2one_mux M0(x[0],y[0],z[0]);
		two2one_mux M1(x[1],y[1],z[1]);
		two2one_mux M2(x[2],y[2],z[2]);
		two2one_mux M3(x[3],y[3],z[3]);
		two2one_mux M4(x[4],y[4],z[4]);
		two2one_mux M5(x[5],y[5],z[5]);
		two2one_mux M6(x[6],y[6],z[6]);
		two2one_mux M7(x[7],y[7],z[7]);
		
endmodule

module ALU_Mux(x0,x1,x2,x3,x4,x5,x6,x7,s,z);
		input  wire[0:7] x0,x1,x2,x3,x4,x5,x6,x7;
		input  wire[0:2] s;  // control
		output wire[0:7] z;
		
		wire[0:7] xc00,xc01,xc03;
		wire[0:7] xc10,xc11;
		
		eightx2eight_mux M00(x0,x1,s[0],xc00);
		eightx2eight_mux M01(x2,x3,s[0],xc01);
		eightx2eight_mux M02(x4,x5,s[0],xc02);
		eightx2eight_mux M03(x6,x7,s[0],xc03);
		
		eightx2eight_mux M10(xc00,xc01,s[1],xc10);
		eightx2eight_mux M11(xc02,xc02,s[1],xc11);
		
		eightx2eight_mux M20(xc10,xc11,s[2],z);
		
endmodule

