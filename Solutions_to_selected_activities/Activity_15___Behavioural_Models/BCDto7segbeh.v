module BCDto7segbeh(x,z);
		input  [3:0] x;
		output reg[6:0] z;
		
		always @(x)
		case(x)
				4'b0000: z<=7'b1111110;
				4'b0001: z<=7'b0110000;
				4'b0010: z<=7'b1101101;
				4'b0011: z<=7'b1111001;
				4'b0100: z<=7'b0110011;
				4'b0101: z<=7'b1011011;
				4'b0110: z<=7'b1011111;
				4'b0111: z<=7'b1110000;
				4'b1000: z<=7'b1111111;
				4'b1001: z<=7'b1111011;
				default: z<=7'b0000000;
		endcase
endmodule
