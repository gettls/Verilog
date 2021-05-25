module modules(in1, in2, out, sel, sh);
    input[7:0] in1, in2;
    input[3:0] sel, sh;
    output[7:0] out; // output
    reg[7:0] out;

    always@(sel or in1 or in2) begin
        case(sel)
            4'b0000 : out = in1+in2;
            4'b0001 : out = in1*in2;
            4'b0010 : out = in1-in2;
            4'b0011 : out = in1/in2;
            4'b0100 : out = in1<<in2;
            4'b0101 : out = in1>>in2;
        endcase
    end

    always@(out) begin
        if(out > 8'b00001111) begin
           out = out >> sh;
        end
        else begin
            out = out << sh;
        end
    end

endmodule