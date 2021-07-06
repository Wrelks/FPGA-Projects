`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2021 06:28:48 AM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

    /*    if(sw[3:2] == 2'b11 || sw[1:0] == 2'b11) begin
            led[3:0] = 4'b1001;
        end else begin
            led[3:0] = 4'b0001;
        end */

module top(
    input wire logic clk,
    input wire logic [1:0] sw,
    output     logic [3:0] led
    
    );

   /* always_comb begin
        led[0] = A^B;
        led[1] = A&B;
    end */
    
    /* 
    always_comb automatically executes once at time zero, 
    whereas always @* waits until a change occurs on a 
    signal in the inferred sensitivity list. 
    */
    
    //always_ff @ pos* only exec on positive clockedge
    //we used always_comb blocks. Flip-flips require a new type of block: always_ff.
    
    logic [3:0] counter = 0; //four bit counter var.
    
    always_ff @ (posedge clk) begin
        counter <= counter + 1;
        led[3:0] <= counter[3:0];
    end

endmodule
