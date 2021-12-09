`timescale 1ns/1ns
`include "FSM.v"

module FSM_TEST;

    reg[1:0] Data_in;
    reg CLK, nRESET;

    wire[3:0] state;

    // wire[3:0] nextState;
    
    FSM a(.state(state), .Data_in(Data_in), .nRESET(nRESET), .CLK(CLK));

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(1);
    end

    always begin
        #10 CLK = ~CLK;
    end

    initial begin
        nRESET = 1'b1; CLK = 1'b0;
        #10 nRESET = 1'b0;
        #10 Data_in = 2'b11; 
        #10 Data_in = 2'b01; 
        #10 Data_in = 2'b01;
        #10 Data_in = 2'b00;
        #10 Data_in = 2'b01;
        #10 Data_in = 2'b10; 
        #10 Data_in = 2'b00; 
        #10 Data_in = 2'b10;
        #10 Data_in = 2'b10;
        #10 Data_in = 2'b00; 
        #10 $finish;
    end

endmodule