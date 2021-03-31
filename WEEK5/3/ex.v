module A(in1, in2, out1);
    input in1, in2;
    output out1;
    wire in1, in2, out1;
    assign out1 = in1 & in2;
endmodule

module B(in1, in2, out2);
    input in1, in2;
    output out2;
    wire in1, in2, out2;
    assign out2 = in1 & ~in2;
endmodule

module ex(out1, out2, result);
    input out1,out2;
    output result;
    wire in1,in2,out1,out2;
    wire result;
    assign result = out1 | out2;
endmodule