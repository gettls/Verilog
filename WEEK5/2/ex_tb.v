`timescale 1ns/1ns
`include "ex01.v"

module ex_tb;

reg inA,inB;
wire out;

ex01 a(.in1(inA), .in2(inA), .result(out));

initial begin
    $dumpfile("ex_out.vcd");
    $dumpvars(1);
end

initial begin
    #10 inA = 0; inB = 0;
    #10 inA = 0; inB = 1;
    #10 inA = 1; inB = 0;
    #10 inA = 1; inB = 1;
    #10 $finish;
end

endmodule