module mux4to1beh(x0,x1,x2,x3,sel,y);
		input x0,x1,x2,x3;
		input [1:0] sel;
		output reg y;
		always @(x0,x1,x2,x3,sel)
		case(sel)
				2'b00 : y<=x0;
				2'b01 : y<=x1;
				2'b10 : y<=x2;
				2'b11 : y<=x3;
		endcase
endmodule
				