module ex01(in1, in2, out1);
	// Port 선언부 //    
	input in1, in2;  
	output out1;    
	wire in1, in2;  
	wire out1;	
	// 연산부 //   
	assign out1 = in1 & in2;
	// assign 은 값을 저장하는게 아니라 전달하는 것
	// assign 할때는 wire를 사용한다
endmodule
