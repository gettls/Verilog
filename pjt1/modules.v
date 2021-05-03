module NAND(in1, in2, out);
    input in1, in2;
    output out;
    wire in1,in2,out;
    assign out = ~(in1*in2);
endmodule

module AND(in1, in2, out);
    input in1,in2;
    output out;
    wire in1,in2,out;
    assign out = in1 & in2;
endmodule

module OR(in1, in2, out);
    input in1, in2;
    output out;
    wire in1, in2, out;
    assign out = in1 | in2;
endmodule

module XOR(in1, in2, out);
    input in1,in2;
    output out;
    wire in1,in2,out;
    assign out = in1 ^ in2;
endmodule