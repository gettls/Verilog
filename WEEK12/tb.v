`timescale 1ns/1ns
`include "modules.v"

module modules_tb;
    reg[7:0] inA, inB;
    reg[3:0] sel, sh;
    wire[7:0] out;

    modules a(inA, inB, out, sel, sh);

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(1);
    end

    initial begin
        inA = 8'b00000001; inB = 8'b00000001; sh = 4'b0100;
        #10 sel = 4'b0000; // (1+1)  
        #10 inB = 8'b00000011; // 1+(15) + 3+(15) = 
        #10 inB = 8'b00001111; // 1+14 + (15)
        #10 inA = 8'b00000010; inB = 8'b00001111; // 2+14 + (15)
        #10 inA = 8'b00001111; inB = 8'b00001111; // 14+14 - (15)
        //#10 sel = 4'b0001;
        //#10 sel = 4'b0010;
        //#10 sel = 4'b0100;
        //#10 sel = 4'b0101;        
        #10 $finish;                
    end

endmodule