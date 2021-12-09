module FSM(state, Data_in, nRESET, CLK);
 
    input[1:0] Data_in;
    input nRESET, CLK;
    output[3:0] state;
    
    wire[1:0] Data_in; // 0: straight, 1: left, 2: right, 3: stop
    wire nRESET, CLK;
    reg[3:0] state; // A,B,C,D

    parameter[1:0] A=2'h0, B=2'h1, C=2'h2, D=2'h3;

    always @(CLK) begin
        if(nRESET == 1'b1) state=A;
        else begin
            case(state)
                A: begin
                    if(Data_in == 2'b00) state = D;
                    else if(Data_in==2'b01) state = B;
                    else if(Data_in==2'b10) state = C;
                    else state=A;
                end
                B: begin
                    if(Data_in == 2'b00) state = C;
                    else if(Data_in==2'b01) state = D;
                    else if(Data_in==2'b10) state = A;
                    else state=B;
                end
                C: begin
                    if(Data_in == 2'b00) state = B;
                    else if(Data_in==2'b01) state = A;
                    else if(Data_in==2'b10) state = D;
                    else state=C;
                end
                D: begin
                    if(Data_in == 2'b00) state = A;
                    else if(Data_in==2'b01) state = C;
                    else if(Data_in==2'b10) state = B;
                    else state=D;
                end
            endcase
        end
    end
     
 endmodule
