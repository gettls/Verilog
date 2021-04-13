module Bit4(a, b, c, out, sum);

    input[3:0] a,b,c;
    output[3:0] sum;
    output out;
    wire[3:0] carry;

    Fulladder A(.inA(a[0]), .inB(b[0]), .Cin(c[0]), .Cout(carry[0]), .Sum(sum[0]));
    Fulladder B(.inA(a[1]), .inB(b[1]), .Cin(carry[0]), .Cout(carry[1]), .Sum(sum[1]));
    Fulladder C(.inA(a[2]), .inB(b[2]), .Cin(carry[1]), .Cout(carry[2]), .Sum(sum[2]));
    Fulladder D(.inA(a[3]), .inB(b[3]), .Cin(carry[2]), .Cout(out), .Sum(sum[3]));

endmodule