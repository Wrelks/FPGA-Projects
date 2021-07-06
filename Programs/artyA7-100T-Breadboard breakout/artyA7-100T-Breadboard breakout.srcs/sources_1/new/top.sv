`timescale 1ns / 1ps
`default_nettype none

module top(
    input wire logic [3:0] sw,
    input wire logic CLK100MHZ,
    input wire logic [15:0] dip,
    output     logic [23:0] outWire,
    output     logic [3:0] led,
    output     logic [3:0] led_r, led_b, led_g,
    input wire logic [3:0] btn
    );
    
    //fun massive array
    //reg [99999:0] y [0:4][0:1]; //Y is a 2d array (5 rows, 2 col) each 100,000bits wide
    
    reg [7:0] memory [9999:0]; //10,000 8-bit arrays 
                                //using a 16-bit word causes an overflow error (1,600,000) - assuming 100,000 words used
                                //MAX SIZE : 1,000,000
    
    byte red = 8'h00;
    byte green = 8'h00;
    byte blue = 8'h00;    
            pwm pwm_led_r0 (.clk(CLK100MHZ), .duty(red), .pwm_out(led_r[0]));
            pwm pwm_led_g0 (.clk(CLK100MHZ), .duty(green), .pwm_out(led_g[0]));
            pwm pwm_led_b0 (.clk(CLK100MHZ), .duty(blue), .pwm_out(led_b[0]));
            
            pwm pwm_led_r1 (.clk(CLK100MHZ), .duty(red), .pwm_out(led_r[1]));
            pwm pwm_led_g1 (.clk(CLK100MHZ), .duty(green), .pwm_out(led_g[1]));
            pwm pwm_led_b1 (.clk(CLK100MHZ), .duty(blue), .pwm_out(led_b[1]));
            
            pwm pwm_led_r2 (.clk(CLK100MHZ), .duty(red), .pwm_out(led_r[2]));
            pwm pwm_led_g2 (.clk(CLK100MHZ), .duty(green), .pwm_out(led_g[2]));
            pwm pwm_led_b2 (.clk(CLK100MHZ), .duty(blue), .pwm_out(led_b[2]));
            
            pwm pwm_led_r3 (.clk(CLK100MHZ), .duty(red), .pwm_out(led_r[3]));
            pwm pwm_led_g3 (.clk(CLK100MHZ), .duty(green), .pwm_out(led_g[3]));
            pwm pwm_led_b3 (.clk(CLK100MHZ), .duty(blue), .pwm_out(led_b[3]));
   
    localparam DIV_BY = 27'd100_000_000;
    logic [26:0] cnt = 0; //26 bit counter 
    logic stb;
    logic [23:0] countHold;
    always_ff @(posedge CLK100MHZ) begin
        if (cnt != DIV_BY-1) begin
            stb <= 0;
            cnt <= cnt + 1;
        end else begin 
            stb <= 1;
            cnt <= 0;
        end
    end
    /* always_ff @(posedge CLK100MHZ) begin
        if (stb == 1) begin
            //one second execute     
        end
    end  */
    
    logic [7:0] aInput = dip[7:0];
    logic [7:0] bInput = dip[15:8];
    longint termOne = 0;
    longint termTwo = 1;
    longint fib = 0;
    longint countByTwo = 1;
    
    assign led[3:0] = sw[3:0];
    
    always_ff @(posedge CLK100MHZ) begin //if you use always_comb on this block then the fib counter won't count by the second.
        case(sw)
            4'b0000: outWire[23:0] = aInput + bInput;
            4'b0001: outWire[23:0] = aInput - bInput;
            4'b0010: outWire[23:0] = aInput * bInput;
            4'b0011: outWire[23:0] = aInput / bInput;
            4'd4: outWire = aInput * aInput;
            4'd5: outWire = bInput * bInput;
            4'd6: outWire = aInput * aInput * aInput;
            4'd7: outWire = bInput * bInput * bInput;
            4'd8: begin
                if (stb == 1) begin
                    fib = termOne + termTwo;
                    termOne = termTwo;
                    termTwo = fib;
                    
                    //print result
                    outWire = termTwo;
                end
            end
            4'd9: begin //reset fib sequence
               termOne = 0;
               termTwo = 1;
               fib = 0;
            end
            4'd10: begin
                if (stb == 1) begin
                    countByTwo *= 2;
                    outWire = countByTwo;
                end
            end
            4'd11: begin
                outWire = 4'b1111; //just to make sure it's working
                //pwm module declare doesn't work here 
                red = 8'h00;
                green = 8'h00;
                blue = 8'hFF;
             end
             4'd12: begin //PURPLE
                outWire = 4'b1111;
                red = 8'hB9;
                green = 8'h00;
                blue = 8'hFF;
             end
             4'd13: begin
                outWire = 4'b1111;
                red = 8'hFF;
                green = 8'hFF;
                blue = 8'h00;
             end
             4'd14: begin
                case (btn)
                    4'd1: begin
                        outWire = memory[dip[15:0]];
                    end
                    4'd2: begin
                        memory[dip[7:0]] = dip[15:8]; //1st dip = memory address | 2nd dip = memory contents
                    end
                    4'd4: begin
                        for (longint i=0; i < 10000; i+=1) begin
                            if(i%2 == 0) begin
                                memory[i] = 8'h7F; //write 127 to mem if address is even
                            end else begin
                                memory[i] = 8'hFF; //write 255 to mem if address is odd
                            end
                        end
                    end
                endcase
             end                
             
            default: begin 
                outWire = 8'hFF;
                red = 8'h01;
                green = 8'h01;
                blue = 8'h01;
            end
        endcase
    end
    
endmodule
