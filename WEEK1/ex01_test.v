//testbench//
`timescale 1ns/1ns
`include "ex01.v"

module ex01_test;  
reg in1, in2;  
wire out1;    
ex01 a(.in1(in1), .in2(in2), .out1(out1));

initial begin  
	$dumpfile("test_out.vcd");  
	$dumpvars(1);
end

initial begin    
	#10 in1 = 0; in2 = 0;    
	#10 in1 = 1; in2 = 0;    
	#10 in1 = 0; in2 = 1;    
	#10 in1 = 1; in2 = 1;    
	#10 $finish;  
end
endmodule