module module_1(inA, inB, module1_out);
    input inA,inB;
    output module1_out;
    wire inA,inB,AnB,module1_out;

    AND a(inA, inB, AnB);
    OR b(inA, AnB, module1_out);
endmodule