module always_m(a,b,c);
    input a; 
    input c; // change
    output b; // output

    //wire  a;
    //wire c;
    reg b;

    always @(c) begin // always 항상 실행 // @(c) c값이 변했다면 항상 실행
        b = a;
    end // c값이 변한다면, b에 a값을 넣는 실행을 항상 한다.
    
endmodule