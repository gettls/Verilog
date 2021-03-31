`timescale 1ns/1ns
`include "exec.v"
`include "modules.v"

module final;

reg inA,inB;
wire out;

exec final(.in1(inA), .in2(inA), .result(out));

initial begin
    $dumpfile("final_out.vcd");
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