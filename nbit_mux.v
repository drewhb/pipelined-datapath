//n bit Mux
// Specify the number of select lines as a parameter.
module nbit_mux(Out, S2_ReadData2, S2_Imm, S2_DataSource);


parameter SELECT_WIDTH = 3;
parameter IMMEDIATE_WIDTH = 16; 
parameter READ_WIDTH = 32; 
//-------------Input Ports-----------------------------

input [SELECT_WIDTH-1:0] S2_DataSource;
input [IMMEDIATE_WIDTH-1:0]  S2_Imm;
input [READ_WIDTH-1:0] S2_ReadData2; 
 
//-------------Output Ports----------------------------
output [READ_WIDTH-1:0] Out;
//-------------Wires-----------------------------------
//-------------Other-----------------------------------
//------------Code Starts Here-------------------------


wire[31:0]Extension;


assign Out = (S2_DataSource) ? S2_Imm : S2_ReadData2;
endmodule
