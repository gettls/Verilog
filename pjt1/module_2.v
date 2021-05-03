module module_2(inA, inB, module2_out);
    input inA,inB;
    output module2_out;  
    wire inA,inB,AnB,module2_out;

    AND a(inA, inB, AnB);
    OR b(AnB, inB, module2_out);
endmodule