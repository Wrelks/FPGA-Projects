`timescale 1ns / 1ps


module simpleAdder(
    input wire logic [3:0] sw,
    output     logic [3:0] led,
    input wire logic [3:0] btn,
    input wire logic CLK100MHZ
    );

    //logic / reg didn't work --- Only when using wire did it work 
    wire [1:0] a = sw[1:0];
    wire [1:0] b = sw[3:2];
    
    //00 - add | 01 - sub | 10 - mult | 11 - div 
    wire [2:0] mode = btn[2:0];  
    
    longint powered = 1;
    longint powa = 1;
    int runOnce = 0;
    
    logic [1:0] heldA = 2'b00;
    logic [1:0] heldB = 2'b00;   
    
    always_ff @(posedge CLK100MHZ) begin
    
        if(mode[1:0] == 2'd0) begin
            led[3:0] <= a[1:0] + b[1:0];
         end
         if (mode[1:0] == 2'd1) begin
            led[3:0] <= a[1:0] - b[1:0];
         end
         if (mode[1:0] == 2'd2) begin
            led[3:0] <= a[1:0] * b[1:0]; //playing around with ints
         end            
         if (mode[1:0] == 2'b11) begin
            led[3:0] <= a[1:0] / b[1:0];
         end
         if (mode[2:0] == 4'd4) begin
            if (runOnce == 0) begin
                for (powered = 1; powered < b[1:0]+1; powered = powered + 1'b1) begin
                    powa = powa * a[1:0];
                end
                runOnce+=1;
                heldA[1:0] <= a[1:0];
                heldB[1:0] <= b[1:0];
             end
             led[3:0] <= powa;
             
             if((heldA[1:0] != a[1:0]) || (heldB[1:0] != b[1:0])) begin
               runOnce = 0;
               powered = 1;
               powa = 1;
             end
         end
    end
  
endmodule


/*
module logicEx(
    input wire logic [3:0] sw,
    output     logic [3:0] led,
    input wire logic CLK100MHZ

    );
    
    // two bit adder
    logic [1:0] out;
    wire Aone = sw[0];
    wire Atwo = sw[1];
    wire Bone = sw[2];
    wire Btwo = sw[3];
    // adder one
    assign XOR1out = Aone^Bone;
    assign out[0] = XOR1out^1'b0; //1'b1 = cin
    assign AND1out = 1'b0&XOR1out; //1'b1 = cin
    assign AND2out = Bone&Aone;
    assign Cout = AND1out|AND2out;
    
    // adder two 
    assign XOR2out = Atwo^Btwo;
    assign out[1] = XOR2out^Cout;
    assign AND3out = Cout&XOR2out;
    assign AND4out = Btwo&Atwo;
    assign CoutTwo = AND3out|AND4out;
    
    
    always_ff @(posedge CLK100MHZ) begin
        led[1:0] <= out[1:0];
        led[2] <= CoutTwo;
    end 
    
endmodule*/