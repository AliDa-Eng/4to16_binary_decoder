`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2025 05:04:17 PM
// Design Name: 
// Module Name: three_8bin_decoder
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


module three_8bin_decoder(
    input en,
    input [2:0] a,
    output [7:0] led
    );
    wire [3:0] msb_led, lsb_led;
    wire [1:0] msb_a; 
    wire [1:0] lsb_a;
    wire msb_en, lsb_en;
    
    //assign msb_led = led[7:4]; 
    //assign lsb_led = led[3:0];
    //assign led = {msb_led, lsb_led};
    //assign led[3:0] = lsb_led;
    assign msb_a = a[1:0]; 
    assign lsb_a = a[1:0];
    
    assign msb_en = (en & a[2]); 
    assign lsb_en = (en & ~a[2]);
    
    two_4bin_decoder instan1(.en(msb_en), .a(msb_a), .led(msb_led));
    two_4bin_decoder instan2(.en(lsb_en), .a(lsb_a), .led(lsb_led));
    
    assign led[7:0] = (en)?{msb_led, lsb_led}:8'b00000000;
endmodule
