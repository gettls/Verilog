`timescale 1ns/1ns
`include "ex.v"

module test2;

reg inA,inB;
wire out;

A test(.in1(inA), .in2(inA), .out1(out));

initial begin
    $dumpfile("out.vcd");
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