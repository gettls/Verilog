module exec(in1, in2, result);
    input in1,in2;
    output result;
    wire in1,in2,out1,outA,outB,result;
    
    //객체 만들어줘야함
    AND a1(in1,in2,outA); // in1 & in2
    
    NOT a2(in2,out1);
    AND a3(in1,out1,outB); // in1 & ~in2

    OR a4(outA,outB,result); // out1 | outB
endmodule