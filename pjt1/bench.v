`timescale 1ns/1ns
`include "modules.v"
`include "module_3.v"
`include "module_2.v"
`include "module_1.v"
module bench;

reg inA,inB;
output Out;

module_3 A(.in1(inA), .in2(inB), .out(Out));

initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
end

initial begin
    #10 inA=0; inB=0;
    #10 inA=0; inB=1;
    #10 inA=1; inB=0;
    #10 inA=1; inB=1;
    #10 $finish;
end

endmodule