`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2023 06:11:49 PM
// Design Name: 
// Module Name: register_testbench
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


module register_testbench;

 logic [13:0] instructions;
 logic CLK,WE3;

 logic carry_out;
 logic overflow;
 logic zero;
 logic negative;
   
    
    
    registerFile registerFileInp (.CLK(CLK),.WE3(WE3),.instructions(instructions),.carry_out(carry_out),.overflow(overflow),.zero(zero),.negative);
    
    initial begin
	   CLK = 0;
	   forever #10 CLK = ~CLK;
	end
    
   initial begin 
   instructions = 14'b00101000000001; WE3=1'b0;#10;
   
   instructions = 14'b00101000000001; WE3=1'b1;#10;
   
   instructions = 14'b01101100100011; WE3=1'b1;#10;
   
   instructions = 14'b10110010110111; WE3=1'b1;#10;
   
   instructions = 14'b11111110001001; WE3=1'b1;#10;

   

   end
   
   

    

    
    
  
    
    
endmodule
