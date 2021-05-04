`timescale 1ns/1ns
`include "MUX.v"

module mux_tb;
    reg[3:0] in1,in2,in3,in4;
    reg[2:0] sel;
    wire[3:0] out;

    mux mux1(in1,in2,in3,in4,sel,out);
    
    initial begin
        $dumpfile("mux.vcd");
        $dumpvars(1);
    end

    initial begin
        in1=4'b0011; in2=4'b0110; in3=4'b1001; in4=4'b1100;
        #10 sel = 2'b00;
        #10 sel = 2'b01;
        #10 sel = 2'b10;
        #10 sel = 2'b11;
        #10 $finish;
    end

endmodule