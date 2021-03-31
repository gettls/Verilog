module AND(in1, in2, out1);
    input in1, in2;
    output out1;
    wire in1, in2, out1;
    assign out1 = in1 & in2;
endmodule

module NOT(in1, out1);
    input in1;
    output out1;
    wire in1,out1;
    assign out1 = ~in1;
endmodule

module OR(in1,in2,out1);
    input in1,in2;
    output out1;
    wire in1, in2, out1;
    assign out1 = in1 | in2;
endmodule