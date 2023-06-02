`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2023 12:23:05 PM
// Design Name: 
// Module Name: registerFile
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


module registerFile(
//inputs
input logic CLK,
input logic WE3,
input logic [13:0] instructions,
//outputs
output logic carry_out,
output logic overflow,
output logic zero,
output logic negative
    );
    
    logic [1:0] ALUControl;
    logic [3:0] REGwrt;
    logic [3:0] REG1;
    logic [3:0] REG2;
    
    logic [31:0] RD1,RD2,WD3;
    
    register_addresses reg_out(instructions,ALUControl,REGwrt,REG1,REG2);
    
    logic [31:0] rf [0:15];
	
	initial begin
        // Kay?tlara atama yapma
        rf[0] = 32'h00000000;
        rf[1] = 32'h00000001;
        rf[2] = 32'h00000002;
        rf[3] = 32'h00000003;
        rf[4] = 32'h00000004;
        rf[5] = 32'h00000005;
        rf[6] = 32'h00000006;
        rf[7] = 32'h00000007;
        rf[8] = 32'h00000008;
        rf[9] = 32'h00000009;
        end
   
		
	always_comb   begin
        RD1 = rf[REG1];
        RD2 = rf[REG2];
	end
	
	ALU  alu_out(RD1,RD2,ALUControl,WD3,carry_out,overflow,zero,negative);
	
	
	always_comb   begin           
         begin
            if(WE3 == 1) begin
                rf[REGwrt] <= WD3;
            end
        end
    end
	

    
    
endmodule
