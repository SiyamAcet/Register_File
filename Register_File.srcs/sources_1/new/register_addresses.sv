`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2023 12:07:01 PM
// Design Name: 
// Module Name: register_addresses
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


module register_addresses( input logic [13:0] instruction,
output logic [1:0] Ins,
output logic [3:0] REGwrt,
output logic [3:0] REG1,
output logic [3:0] REG2
    );
    
    
    assign Ins = instruction[13:12];
    assign REGwrt = instruction[11:8];
    assign REG1 = instruction[7:4];
    assign REG2 = instruction[3:0];

    
endmodule
