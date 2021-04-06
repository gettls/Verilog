`timescale 1ns/1ns
`include "modules.v"
`include "exec.v"
module bench;

reg inA,inB,Cin; // 초기 input 으로 들어가는 register
wire C1,C2,S; // module output 을 묶어주기 위해 wire 선언
wire Cout,Sum; // result output

HalfAdder aa(.in1(inA), .in2(inB), .S(S), .C(C1));
HalfAdder bb(.in1(S), .in2(Cin), .S(Sum), .C(C2)); // Sum
OR cc(.in1(C1), .in2(C2), .out(Cout)); // Cout 

initial begin
    $dumpfile("test2.vcd");
    $dumpvars(1);
end

initial begin
    #10 inA=0;inB=0;Cin=0;
    #10 inA=0;inB=0;Cin=1;
    #10 inA=0;inB=1;Cin=0;
    #10 inA=0;inB=1;Cin=1;
    #10 inA=1;inB=0;Cin=0;
    #10 inA=1;inB=0;Cin=1;
    #10 inA=1;inB=1;Cin=0;
    #10 inA=1;inB=1;Cin=1;
    #10 $finish;
end

endmodule