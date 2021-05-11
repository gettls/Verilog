module shift_m(out,In,dir,sh);
    input dir;
    input[3:0] sh;
    input[7:0] In;
    output[7:0] out; // output

    reg[7:0] out;

    always @(In or dir or sh) begin // always 항상 실행 // @(c) c값이 변했다면 항상 실행
        case(dir)
           1'b0 : out = In<<sh; //LEFT
           1'b1 : out = In>>sh; //RIGHT
        endcase
    end // c값이 변한다면, b에 a값을 넣는 실행을 항상 한다.
    
endmodule