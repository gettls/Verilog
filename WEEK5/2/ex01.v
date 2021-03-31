module ex01(in1, in2, result);
    input in1,in2;
    output out1,out2,result;
    wire in1,in2;
    wire out1,out2,result;
    assign out1 = in1 & in2;
    assign out2 = in1 & ~in2;
    assign result = out1 | out2;
endmodule