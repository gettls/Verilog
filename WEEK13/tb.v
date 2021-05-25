`timescale 1ns/1ns
`include "blk_nblk.v"
module tb;
    reg[3:0] BLK_in1, NBLK_in1;
    reg[3:0] D;
    reg clk;
    wire[3:0] BLK_out1, BLK_out2, NBLK_out1, NBLK_out2;
    wire[3:0] Latch_out, FF_out;

    BLK_NBLK a(BLK_in1, NBLK_in1, clk,
                BLK_out1, BLK_out2, NBLK_out1, NBLK_out2);
    D_LATCH_FF aa(D, clk, Latch_out, FF_out);
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(1);
    end

    always begin
        #5 clk=~clk;
    end

    initial begin
        clk = 1'b0;
        #10 BLK_in1 = 4'b0001; NBLK_in1=4'b0001; D=4'b0001;
        #10 BLK_in1 = 4'b0010; NBLK_in1=4'b0010; D=4'b0010;
        #10 BLK_in1 = 4'b0011; NBLK_in1=4'b0011; D=4'b0011;
        #10 BLK_in1 = 4'b0100; NBLK_in1=4'b0100; D=4'b0100;
        #10 BLK_in1 = 4'b0101; NBLK_in1=4'b0101; D=4'b0101;
        #10 BLK_in1 = 4'b0110; NBLK_in1=4'b0110; D=4'b0110;
        #10 $finish;
    end

endmodule