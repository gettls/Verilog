module module_3 (in1,in2,out);
    input in1,in2;
    output out;
    wire mod1,mod2,mod3;
    wire in1,in2,out;

    module_1 a(in1, in2, mod1);
    module_2 b(in1, in2, mod2);
    XOR c(mod1, mod2, mod3);

    NAND d(mod3, mod3, out);

endmodule