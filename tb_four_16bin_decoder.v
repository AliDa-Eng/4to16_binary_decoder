`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2025 12:04:04 AM
// Design Name: 
// Module Name: tb_four_16bin_decoder
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


module tb_four_16bin_decoder(

    );
    //signal declaration 
    reg test_en;
    reg [3:0] test_a;
    wire [15:0] test_led;
    integer i; 
    
    //instantiate unit under test 
    four_16bin_decoder uut(.en(test_en), .a(test_a), .led(test_led));
    
    //generate test vectors + monitor change in variables 
    initial 
    begin 
        $monitor("Time =   %0d|test_en =      %b|test_a = %b  |test_led =          %b| ", $time, test_en, test_a, test_led);
    
        for (i = 0; i < 16; i = i + 1)
        begin 
            test_en = 1;
            test_a = i;
            #20;
        
        end 
        for (i = 0; i < 16; i = i + 1)
        begin 
            test_en = 0;
            test_a = i;
            #20;
        
        end
        test_en = 0;
        $finish;
        
    
    
    end 
endmodule
