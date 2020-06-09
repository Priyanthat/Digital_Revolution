//module exor_tb(xor_output,input1,input2);
//	input input1,input2;
//	output xor_output;
	
module exor_tb();

	logic a,b, c;
	//wire c;
	
	exor UUT ( .xor_output(c),.input1(a),.input2(b));
	
	initial begin
		a=0;
		b=0;
		#100
		
		a=1;
		b=0;
		
		#100
		a=1;
		b=0;
		
		#100
		a=1;
		b=1;
		
		#100
		
		$finish;
	end
endmodule

