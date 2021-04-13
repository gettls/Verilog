module Fulladder(inA,inB,Cin,Cout,Sum);

    input inA,inB,Cin;
    output Cout,Sum;
    wire c0,c1,s0;

    HalfAdder a(inA,inB,s0,c0);
    HalfAdder b(s0,Cin,Sum,c1);
    OR c(c0,c1,Cout);
    
endmodule