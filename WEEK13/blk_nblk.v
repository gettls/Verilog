module BLK_NBLK(BLK_in1, NBLK_in1, clk, 
                BLK_out1, BLK_out2, NBLK_out1, NBLK_out2);
    input[3:0] BLK_in1, NBLK_in1;
    input clk;
    output[3:0] BLK_out1, BLK_out2, NBLK_out1, NBLK_out2;
    reg[3:0] BLK_out1, BLK_out2, NBLK_out1, NBLK_out2;
    wire clk;

    //BLK
    always@(posedge clk)
    begin
        BLK_out1 = BLK_in1;
        BLK_out2 = BLK_out1;
    end

    //NBLK
    always@(negedge clk)
    begin
        NBLK_out1 <= NBLK_in1;
        NBLK_out2 <= NBLK_out1;
    end

endmodule

module D_LATCH_FF(D, clk, Latch_out, FF_out);
    input[3:0] D; 
    input clk;
    output[3:0] Latch_out, FF_out;
    reg[3:0] Latch_out, FF_out;
    wire clk;

    always@(posedge clk)
    begin
        Latch_out = D;
    end

    always @(negedge clk or posedge clk) 
    begin
        FF_out <= D;
    end

endmodule