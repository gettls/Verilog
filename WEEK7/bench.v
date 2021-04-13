`timescale 1ns/1ns
`include "modules.v"
`include "halfadder.v"
`include "fulladder.v"
module bench;

reg[3:0] a, b;
reg[3:0] c;
output[3:0] sum;
output out;
wire[3:0] cOut;

Fulladder A(.inA(a[0]), .inB(b[0]), .Cin(c[0]), .Cout(cOut[0]), .Sum(sum[0]));
Fulladder B(.inA(a[1]), .inB(b[1]), .Cin(cOut[0]), .Cout(cOut[1]), .Sum(sum[1]));
Fulladder C(.inA(a[2]), .inB(b[2]), .Cin(cOut[1]), .Cout(cOut[2]), .Sum(sum[2]));
Fulladder D(.inA(a[3]), .inB(b[3]), .Cin(cOut[2]), .Cout(out), .Sum(sum[3]));

initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
end

initial begin
    #10 a=4'b0001; b=4'b0000; c=4'b0000; // input 자료형을 맞추기 위해서 c도 4bit로 만들어야 함
    #10 a=4'b0010; b=4'b0110; c=4'b0000;
    #10 a=4'b0001; b=4'b0000; c=4'b0001;
    #10 a=4'b0010; b=4'b0110; c=4'b0001;
    #10 $finish;
end

endmodule