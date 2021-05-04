`timescale 1ns/1ns
`include "alwayss.v"

module alwaysst_tb;
    reg a,c;
    wire b;

    alwayss_m alwaysss(a,b,c);

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(1);
    end

    initial begin
        #10 c=0; a=1;
        #10 c=1; a=0;
        #10 c=0; a=0;
        #10 c=0; a=1;
        #10 c=1; a=0;
    end
endmodule