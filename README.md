# FPGA Projects
 My Personal FPGA Projects. Feel free to use as learning material. 

```Systemverilog
`timescale 1ns / 1ps

module top #(
    parameter wordSize = 4,
    parameter xSize = 4,
    parameter ySize = 4,
    parameter zSize = 4
    )
    (
    input wire logic [15:0] dip,
    input wire logic [3:0] btn, sw,
    output     logic [23:0] outWire,
    output     logic [3:0] led,
    input      logic CLK100MHZ
    );
    
    //sample var - logic [15:0] i;
    
    //sample reg 8bit words, 256 words - reg [7:0] storage [0:255];
    /*
    reg - always and initial blocks
    wire - assign blocks
    logic - procedural and continous assign statements
    ~~Signals with more than one driver need a net-type like wire so system verilog can resolve~~
    */
    
    reg [wordSize-1:0] array [xSize-1:0] [ySize-1:0] [zSize-1:0]; //a word of 4 bits, columns of 4 bits, and rows of 4 bits
    reg [wordSize-1:0] arrayTwo [xSize-1:0] [ySize-1:0] [zSize-1:0];
    reg [wordSize-1:0] sumArray [xSize-1:0] [ySize-1:0] [zSize-1:0];
    
    assign led = sw;
    
    logic [7:0] i;
    logic [7:0] ii;
    logic [7:0] iii;
    
    always_ff @(negedge CLK100MHZ) begin

           case(sw)
           4'b0000: begin
                    if(btn[0] == 1'b1) begin
                        array[dip[3:0]][dip[7:4]][dip[11:8]] <= dip[15:12];
                    end else if (btn[1] == 1'b1) begin
                        arrayTwo[dip[3:0]][dip[7:4]][dip[11:8]] <= dip[15:12];
                    end
                end

            4'b0001: outWire[23:0] <= array[dip[3:0]][dip[7:4]][dip[11:8]];
            4'b0010: outWire[23:0] <= arrayTwo[dip[3:0]][dip[7:4]][dip[11:8]];
            4'b0011: begin //fill matrix blocks
            for(i = 0; i < 3; i=i+1) begin
                for(ii = 0; ii < 3; ii=ii+1) begin
                    for(iii = 0; iii< 3; iii=iii+1) begin
                        array[i][ii][iii] <= 4'b1001;
                        arrayTwo[i][ii][iii] <= 4'b1001;
                    end
                end
            end
            end
            
            4'b1111: begin
            
            for(i = 0; i < 3; i=i+1) begin
                for(ii = 0; ii < 3; ii=ii+1) begin
                    for(iii = 0; iii< 3; iii=iii+1) begin
                        sumArray[i][ii][iii] <= array[i][ii][iii] + arrayTwo[i][ii][iii];
                    end
                end
            end
                            
            end
            endcase
    end

endmodule

```
