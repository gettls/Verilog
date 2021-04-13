`timescale 1ns/1ns
`include "modules.v"
`include "halfadder.v"
`include "fulladder.v"
`include "4bit.v"

module bench;

reg[3:0] in1, in2;
reg[3:0] inC;
output[3:0] out1;
output out2;
wire[3:0] cOut;

Bit4 A(.a(in1), .b(in2), .c(inC), .out(out2), .sum(out1));

initial begin
    $dumpfile("test_4bit.vcd");
    $dumpvars(1);
end

initial begin
    #10 in1=4'b0001; in2=4'b0000; inC=4'b0000; // input 자료형을 맞추기 위해서 inC도 4bit로 만들어야 함
    #10 in1=4'b0010; in2=4'b0110; inC=4'b0000;
    #10 in1=4'b1000; in2=4'b1000; inC=4'b0000;
    #10 in1=4'b0001; in2=4'b0000; inC=4'b0001;
    #10 in1=4'b0010; in2=4'b0110; inC=4'b0001;
    #10 in1=4'b1001; in2=4'b1000; inC=4'b0001;

    #10 $finish;
end

endmodule