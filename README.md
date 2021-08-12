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

prime number stuff

```SystemVerilog
`timescale 1ns / 1ps

module primeFactors
#(
parameter clkFreq = 27'd100,
parameter sampleNumber = 64'd2_487_125_557_145_446,
parameter max64Num = 64'd9_223_372_036_854_775_807
)(
    input logic [3:0] sw,
    input logic [2:0] btn,
    input logic rst,
    input logic CLK100MHZ,
    input logic [15:0] dip,
    output logic [3:0] led,
    output logic [23:0] outWire
    //output logic freqPinOne, freqPinTwo,
    //output logic [6:0] outWire
    );
    
    logic stb;
    logic [26:0] clkCnt = 0; 
    always_ff @(posedge CLK100MHZ) begin
        if(clkCnt != clkFreq-1) begin
            stb <= 0;
            clkCnt <= clkCnt + 1;
        end else begin
            stb <= 1;    
            clkCnt <= 0;
        end
    end
    
    //------------- is a number prime
    
    /*
    logic [63:0] cnt = 2; //needs to be 2, cause # % 1 = 0
    bit notPrime = 0;
    bit prime = 0;
    bit ran = 0;
    
    always_ff @(posedge stb) begin

        if((sampleNumber % cnt) == 0) begin
            notPrime <= notPrime + 1'b1;
        end
        
        if(cnt != (sampleNumber - 1)) cnt <= cnt + 1'b1; //# % # = 0
        else prime <= prime + 1'b1;
        
        led[0] <= prime;
        led[1] <= notPrime;
        
    end */
    
    //--- prime factors ---
    logic [15:0] L = 0;
    
    logic [127:0] i = 2;
    logic [127:0] n = 127'd1155715155459000;
    logic [23:0] factors [15:0]; 
    bit ran = 0;
    
    always_ff @(posedge stb) begin
        if ((i * i) <= n) begin
            if (n % i) i <= i + 1;
            else begin
                n <= n / i;
                L <= L + 1;
                factors[L] <= i;
            end
        end
        
        if ((n > 1) && !((i*i) <= n)) begin
            if(ran != 1) begin
                L <= L + 1;
                factors[L] <= n;
                ran = ran + 1;
            end
        end
        
        outWire[23:0] <= factors[dip[15:0]];
        
    end
    
endmodule


```
