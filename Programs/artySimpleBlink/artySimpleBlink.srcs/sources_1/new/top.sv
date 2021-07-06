`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2021 09:03:52 AM
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

/* 
//ONE SWITCH CONTROLS ONE LED 
module top (
    input wire logic sw,
    output     logic led
    );
    
    always_comb begin
        led = sw;
    end
    
endmodule */

/*
module top (
    input wire logic [1:0] sw,
    output     logic [3:0] led
);

    always_comb begin 
        if(sw[0]) begin
            led[1:0] = 2'b11;
        end else begin 
            led[1:0] = 2'b00;
        end
        
        if(sw[1]) begin
            led[3:2] = 2'b11; //11 - decimal 3
        end else begin
            led[3:2] = 2'b00;
        end
    end
endmodule*/

module top (
    input wire logic [1:0] sw,
    output     logic [3:0] led
);

    always_comb begin
    
        if(sw[0] == 1 && sw[1] == 1) begin //if both switches are high, shut all down
            led[3:0] = 4'b1001;
        end else begin
            led[1:0] = sw[0] ? 2'b11 : 2'b00; //led 1 through zero equals 11 if sw[0] = true (1)
            led[3:2] = sw[1] ? 2'b11 : 2'b00; //led 2 through three qeuals 11 if sw[1] = true (1)
        end
        
    end
   
 endmodule
