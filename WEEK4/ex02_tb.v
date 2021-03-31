`timescale 100ns/10ns
`include "ex02.v"
`include "ex01.v"
`include "ex03.v"
module ex03_tb; //파일명과 무관
reg in1,in2,in3;
wire outA, outB, outC;
ex01 a(.in1(in1), .in2(in2), .out1(outA));
ex02 b(.in1(in1), .in2(in2), .in3(in3), .out1(outB));
ex03 c(.inX(in1), .inY(in2), .out(outC));
initial begin
    $dumpfile("ex02_out.vcd");
    $dumpvars(1);
end

initial begin
    #10 in1 = 0; in2 = 0; in3 = 0;
    #10 in1 = 0; in2 = 0; in3 = 1;
    #10 in1 = 0; in2 = 1; in3 = 0;
    #10 in1 = 0; in2 = 1; in3 = 1;
    #10 in1 = 1; in2 = 0; in3 = 0;
    #10 in1 = 1; in2 = 0; in3 = 1;
    #10 in1 = 1; in2 = 1; in3 = 0;
    #10 in1 = 1; in2 = 1; in3 = 1;
    #10 $finish;
end
endmodule