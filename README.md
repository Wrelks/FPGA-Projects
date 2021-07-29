# FPGA Projects
 My Personal FPGA Projects. Feel free to use as learning material. 

### 3D Arrays
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

### Adjustable Timer and Concat example
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
    
    localparam DIV_BY = 27'd100_000_000;  // 100 million
    logic [31:0] freq = DIV_BY / dip[15:0];

    logic stb;
    logic [26:0] i = 0;
    always_ff @(posedge CLK100MHZ) begin
    
    /*
    if(dip[15:0] == 0) begin //prevent divide by zero error
        freq[31:0] = DIV_BY;
    end
    */
        if (i != freq-1) begin
            stb <= 0;
            i <= i + 1;
        end else begin
            stb <= 1;
            i <= 0;
        end
    end
    
    logic [1:0] store = 0;
    always_ff @(posedge stb) begin
        if(store == 0) begin
            led[3:0] <= 4'b1111;
            store = 1;
        end else if (store == 1) begin
            led[3:0] <= 4'b0000;
            store = 0;
        end
    end
    
    logic [3:0] e = 4'b1000;
    logic [3:0] b = 4'b0001;
    assign outWire[23:0] = {e, b}; //e_b or 1000_0001
    
endmodule

```
