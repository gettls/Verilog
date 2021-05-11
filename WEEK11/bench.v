`timescale 1ns/1ns
`include "shift.v"

module shift_tb;
    reg dir;
    reg[3:0] sh;
    reg[7:0] inA;
    wire[7:0] out;

    shift_m a(out, inA, dir, sh);

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(1);
    end

    initial begin
        inA = 8'b11111111;
        #10 dir=1'b0; sh=4'b0001; // LEFT
        #10 dir=1'b1; sh=4'b0010; // RIGHT
        #10 $finish;        
    end

endmodule