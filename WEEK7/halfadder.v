module HalfAdder(in1, in2, S, C);

    input in1,in2;
    output S,C;
    wire in1,in2,S,C;

    XOR a(in1,in2,S);
    AND b(in1,in2,C);
    
endmodule