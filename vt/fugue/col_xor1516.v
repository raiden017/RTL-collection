//////////////////////////////////////////////////////////////////////////
//2010 CESCA @ Virginia Tech
//////////////////////////////////////////////////////////////////////////
//This program is free software: you can redistribute it and/or modify
//it under the terms of the GNU General Public License as published by
//the Free Software Foundation, either version 3 of the License, or
//(at your option) any later version.
//
//This program is distributed in the hope that it will be useful,
//but WITHOUT ANY WARRANTY; without even the implied warranty of
//MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//GNU General Public License for more details.
//
//You should have received a copy of the GNU General Public License
//along with this program.  If not, see <http://www.gnu.org/licenses/>.
//////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ns                 

module fugue256_col_xor1516(
														Base,
														sel,
														state_d_long,
														//output
														Col_Xor1516
														);

input  [  4:0] Base;
input          sel;//1->Xor15, 0->Xor16	
input  [959:0] state_d_long;
output [959:0] Col_Xor1516;

wire   [ 31:0] temp1;
wire   [ 31:0] temp2;
wire   [ 31:0] temp3;
wire   [ 31:0] Col_Xor1516_array[0:29];
wire   [ 31:0] state_d_array[0:29];                      

wire [ 31:0] Col_Xor1516_array_00 [0:29];
wire [ 31:0] Col_Xor1516_array_01 [0:29];
wire [ 31:0] Col_Xor1516_array_02 [0:29];
wire [ 31:0] Col_Xor1516_array_03 [0:29];
wire [ 31:0] Col_Xor1516_array_04 [0:29];
wire [ 31:0] Col_Xor1516_array_05 [0:29];
wire [ 31:0] Col_Xor1516_array_06 [0:29];
wire [ 31:0] Col_Xor1516_array_07 [0:29];
wire [ 31:0] Col_Xor1516_array_08 [0:29];
wire [ 31:0] Col_Xor1516_array_09 [0:29];
wire [ 31:0] Col_Xor1516_array_10 [0:29];
wire [ 31:0] Col_Xor1516_array_11 [0:29];
wire [ 31:0] Col_Xor1516_array_12 [0:29];
wire [ 31:0] Col_Xor1516_array_13 [0:29];
wire [ 31:0] Col_Xor1516_array_14 [0:29];
wire [ 31:0] Col_Xor1516_array_15 [0:29];
wire [ 31:0] Col_Xor1516_array_16 [0:29];
wire [ 31:0] Col_Xor1516_array_17 [0:29];
wire [ 31:0] Col_Xor1516_array_18 [0:29];
wire [ 31:0] Col_Xor1516_array_19 [0:29];
wire [ 31:0] Col_Xor1516_array_20 [0:29];
wire [ 31:0] Col_Xor1516_array_21 [0:29];
wire [ 31:0] Col_Xor1516_array_22 [0:29];
wire [ 31:0] Col_Xor1516_array_23 [0:29];
wire [ 31:0] Col_Xor1516_array_24 [0:29];
wire [ 31:0] Col_Xor1516_array_25 [0:29];
wire [ 31:0] Col_Xor1516_array_26 [0:29];
wire [ 31:0] Col_Xor1516_array_27 [0:29];
wire [ 31:0] Col_Xor1516_array_28 [0:29];
wire [ 31:0] Col_Xor1516_array_29 [0:29];

wire [31:0] op_00, op_04, op_15, op_16;
wire [31:0] XOR_04_00;//
wire [31:0] XOR_15_00;//
wire [31:0] XOR_16_00;//

 
genvar i;

generate
	for (i=0;i<30;i=i+1) begin: gen_State_in
		assign state_d_array[i] = state_d_long[(i+1)*32-1:i*32];
	end
endgenerate

generate 
	for (i=0;i<30;i=i+1) begin: gen_ColXor_out
		
		assign Col_Xor1516[(i+1)*32-1:i*32]  = (Base == 0) ? Col_Xor1516_array_00[i] : 
																	         (Base == 1) ? Col_Xor1516_array_01[i] : 														
																	         (Base == 2) ? Col_Xor1516_array_02[i] : 														
																	         (Base == 3) ? Col_Xor1516_array_03[i] : 														
																	         (Base == 4) ? Col_Xor1516_array_04[i] : 														
																	         (Base == 5) ? Col_Xor1516_array_05[i] : 														
																	         (Base == 6) ? Col_Xor1516_array_06[i] : 														
																	         (Base == 7) ? Col_Xor1516_array_07[i] : 														
																	         (Base == 8) ? Col_Xor1516_array_08[i] : 														
																	         (Base == 9) ? Col_Xor1516_array_09[i] : 														
																	         (Base ==10) ? Col_Xor1516_array_10[i] : 														
																	         (Base ==11) ? Col_Xor1516_array_11[i] : 														
																	         (Base ==12) ? Col_Xor1516_array_12[i] : 														
																	         (Base ==13) ? Col_Xor1516_array_13[i] : 														
																	         (Base ==14) ? Col_Xor1516_array_14[i] : 														
																	         (Base ==15) ? Col_Xor1516_array_15[i] : 														
																	         (Base ==16) ? Col_Xor1516_array_16[i] : 														
																	         (Base ==17) ? Col_Xor1516_array_17[i] : 														
																	         (Base ==18) ? Col_Xor1516_array_18[i] : 														
																	         (Base ==19) ? Col_Xor1516_array_19[i] : 														
																	         (Base ==20) ? Col_Xor1516_array_20[i] : 														
																	         (Base ==21) ? Col_Xor1516_array_21[i] : 														
																	         (Base ==22) ? Col_Xor1516_array_22[i] : 														
																	         (Base ==23) ? Col_Xor1516_array_23[i] : 														
																	         (Base ==24) ? Col_Xor1516_array_24[i] : 														
																	         (Base ==25) ? Col_Xor1516_array_25[i] : 														
																	         (Base ==26) ? Col_Xor1516_array_26[i] : 														
																	         (Base ==27) ? Col_Xor1516_array_27[i] : 														
																	         (Base ==28) ? Col_Xor1516_array_28[i] : 														
																	         (Base ==29) ? Col_Xor1516_array_29[i] : 0;


	end
endgenerate


assign XOR_04_00 = op_04^op_00;
assign XOR_15_00 = sel ? op_15^op_00 : op_15; 												 
assign XOR_16_00 = sel ? op_16:op_16 ^ op_00;

assign op_00=(Base == 0) ? state_d_array[ 0] :
             (Base == 1) ? state_d_array[ 1] :   
             (Base == 2) ? state_d_array[ 2] :   
             (Base == 3) ? state_d_array[ 3] :   
             (Base == 4) ? state_d_array[ 4] :   
             (Base == 5) ? state_d_array[ 5] :   
             (Base == 6) ? state_d_array[ 6] :   
             (Base == 7) ? state_d_array[ 7] :   
             (Base == 8) ? state_d_array[ 8] :   
             (Base == 9) ? state_d_array[ 9] :   
             (Base ==10) ? state_d_array[10] :   
             (Base ==11) ? state_d_array[11] :   
             (Base ==12) ? state_d_array[12] :   
             (Base ==13) ? state_d_array[13] :   
             (Base ==14) ? state_d_array[14] :   
             (Base ==15) ? state_d_array[15] :   
             (Base ==16) ? state_d_array[16] :   
             (Base ==17) ? state_d_array[17] :   
             (Base ==18) ? state_d_array[18] :   
             (Base ==19) ? state_d_array[19] :   
             (Base ==20) ? state_d_array[20] :   
             (Base ==21) ? state_d_array[21] :   
             (Base ==22) ? state_d_array[22] :   
             (Base ==23) ? state_d_array[23] :   
             (Base ==24) ? state_d_array[24] :   
             (Base ==25) ? state_d_array[25] :   
             (Base ==26) ? state_d_array[26] :   
             (Base ==27) ? state_d_array[27] :   
             (Base ==28) ? state_d_array[28] :   
             (Base ==29) ? state_d_array[29] :  0; 

assign op_04=(Base == 0) ? state_d_array[ 4] :
             (Base == 1) ? state_d_array[ 5] :   
             (Base == 2) ? state_d_array[ 6] :   
             (Base == 3) ? state_d_array[ 7] :   
             (Base == 4) ? state_d_array[ 8] :   
             (Base == 5) ? state_d_array[ 9] :   
             (Base == 6) ? state_d_array[10] :   
             (Base == 7) ? state_d_array[11] :   
             (Base == 8) ? state_d_array[12] :   
             (Base == 9) ? state_d_array[13] :   
             (Base ==10) ? state_d_array[14] :   
             (Base ==11) ? state_d_array[15] :   
             (Base ==12) ? state_d_array[16] :   
             (Base ==13) ? state_d_array[17] :   
             (Base ==14) ? state_d_array[18] :   
             (Base ==15) ? state_d_array[19] :   
             (Base ==16) ? state_d_array[20] :   
             (Base ==17) ? state_d_array[21] :   
             (Base ==18) ? state_d_array[22] :   
             (Base ==19) ? state_d_array[23] :   
             (Base ==20) ? state_d_array[24] :   
             (Base ==21) ? state_d_array[25] :   
             (Base ==22) ? state_d_array[26] :   
             (Base ==23) ? state_d_array[27] :   
             (Base ==24) ? state_d_array[28] :   
             (Base ==25) ? state_d_array[29] :   
             (Base ==26) ? state_d_array[ 0] :   
             (Base ==27) ? state_d_array[ 1] :   
             (Base ==28) ? state_d_array[ 2] :   
             (Base ==29) ? state_d_array[ 3] :  0; 

assign op_15=(Base == 0) ? state_d_array[15]:
						 (Base == 1) ? state_d_array[16]:
						 (Base == 2) ? state_d_array[17]:
						 (Base == 3) ? state_d_array[18]:
						 (Base == 4) ? state_d_array[19]:
						 (Base == 5) ? state_d_array[20]:
						 (Base == 6) ? state_d_array[21]:
						 (Base == 7) ? state_d_array[22]:
  					 (Base == 8) ? state_d_array[23]:
						 (Base == 9) ? state_d_array[24]:
						 (Base ==10) ? state_d_array[25]:
						 (Base ==11) ? state_d_array[26]:
						 (Base ==12) ? state_d_array[27]:
						 (Base ==13) ? state_d_array[28]:
						 (Base ==14) ? state_d_array[29]:
						 (Base ==15) ? state_d_array[ 0]:
						 (Base ==16) ? state_d_array[ 1]:
						 (Base ==17) ? state_d_array[ 2]:
						 (Base ==18) ? state_d_array[ 3]:
						 (Base ==19) ? state_d_array[ 4]:
						 (Base ==20) ? state_d_array[ 5]:
						 (Base ==21) ? state_d_array[ 6]:
  					 (Base ==22) ? state_d_array[ 7]:
  					 (Base ==23) ? state_d_array[ 8]:
						 (Base ==24) ? state_d_array[ 9]:
						 (Base ==25) ? state_d_array[10]:
						 (Base ==26) ? state_d_array[11]:
						 (Base ==27) ? state_d_array[12]:
						 (Base ==28) ? state_d_array[13]:
						 (Base ==29) ? state_d_array[14]:0;

assign op_16=(Base == 0) ? state_d_array[16]:
						 (Base == 1) ? state_d_array[17]:
						 (Base == 2) ? state_d_array[18]:
						 (Base == 3) ? state_d_array[19]:
						 (Base == 4) ? state_d_array[20]:
						 (Base == 5) ? state_d_array[21]:
						 (Base == 6) ? state_d_array[22]:
						 (Base == 7) ? state_d_array[23]:
  					 (Base == 8) ? state_d_array[24]:
						 (Base == 9) ? state_d_array[25]:
						 (Base ==10) ? state_d_array[26]:
						 (Base ==11) ? state_d_array[27]:
						 (Base ==12) ? state_d_array[28]:
						 (Base ==13) ? state_d_array[29]:
						 (Base ==14) ? state_d_array[ 0]:
						 (Base ==15) ? state_d_array[ 1]:
						 (Base ==16) ? state_d_array[ 2]:
						 (Base ==17) ? state_d_array[ 3]:
						 (Base ==18) ? state_d_array[ 4]:
						 (Base ==19) ? state_d_array[ 5]:
						 (Base ==20) ? state_d_array[ 6]:
						 (Base ==21) ? state_d_array[ 7]:
  					 (Base ==22) ? state_d_array[ 8]:
  					 (Base ==23) ? state_d_array[ 9]:
						 (Base ==24) ? state_d_array[10]:
						 (Base ==25) ? state_d_array[11]:
						 (Base ==26) ? state_d_array[12]:
						 (Base ==27) ? state_d_array[13]:
						 (Base ==28) ? state_d_array[14]:
						 (Base ==29) ? state_d_array[15]:0;


//-- Base: 00 -----------------------------------------------------------------------------


		assign Col_Xor1516_array_00[ 0] =      state_d_array[ 0];																	
		assign Col_Xor1516_array_00[ 1] =      state_d_array[ 1];													
		assign Col_Xor1516_array_00[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_00[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_00[ 4] =      XOR_04_00;//state_d_array[ 4] ^ state_d_array[ 0];
		assign Col_Xor1516_array_00[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_00[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_00[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_00[ 8] =      state_d_array[ 8]; 												 												
		assign Col_Xor1516_array_00[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_00[10] =      state_d_array[10];																					
		assign Col_Xor1516_array_00[11] =      state_d_array[11];
		assign Col_Xor1516_array_00[12] =      state_d_array[12];
		assign Col_Xor1516_array_00[13] =      state_d_array[13];
		assign Col_Xor1516_array_00[14] =      state_d_array[14];
		assign Col_Xor1516_array_00[15] = 		 XOR_15_00;//sel? state_d_array[15] ^ state_d_array[ 0] : state_d_array[15];        
		assign Col_Xor1516_array_00[16] = 		 XOR_16_00;//sel? state_d_array[16] : state_d_array[16] ^ state_d_array[ 0];        
		assign Col_Xor1516_array_00[17] =      state_d_array[17];
		assign Col_Xor1516_array_00[18] =      state_d_array[18];
		assign Col_Xor1516_array_00[19] =      state_d_array[19];
		assign Col_Xor1516_array_00[20] =      state_d_array[20];
		assign Col_Xor1516_array_00[21] =      state_d_array[21];
		assign Col_Xor1516_array_00[22] =      state_d_array[22];
		assign Col_Xor1516_array_00[23] =      state_d_array[23];
		assign Col_Xor1516_array_00[24] =      state_d_array[24];
		assign Col_Xor1516_array_00[25] =      state_d_array[25];
		assign Col_Xor1516_array_00[26] =      state_d_array[26];
		assign Col_Xor1516_array_00[27] =      state_d_array[27];
		assign Col_Xor1516_array_00[28] =      state_d_array[28];
		assign Col_Xor1516_array_00[29] =      state_d_array[29];
//-- Base: 01 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_01[ 1] =      state_d_array[ 1];																	
		assign Col_Xor1516_array_01[ 2] =      state_d_array[ 2];													
		assign Col_Xor1516_array_01[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_01[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_01[ 5] =      XOR_04_00;//state_d_array[ 5] ^ state_d_array[ 1];
		assign Col_Xor1516_array_01[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_01[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_01[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_01[ 9] =      state_d_array[ 9]; 												 												
		assign Col_Xor1516_array_01[10] =      state_d_array[10];
		assign Col_Xor1516_array_01[11] =      state_d_array[11];																					
		assign Col_Xor1516_array_01[12] =      state_d_array[12];
		assign Col_Xor1516_array_01[13] =      state_d_array[13];
		assign Col_Xor1516_array_01[14] =      state_d_array[14];
		assign Col_Xor1516_array_01[15] =      state_d_array[15];
		assign Col_Xor1516_array_01[16] =      XOR_15_00;//sel? state_d_array[16] ^ state_d_array[ 1] : state_d_array[16];        
		assign Col_Xor1516_array_01[17] =      XOR_16_00;//sel? state_d_array[17] : state_d_array[17] ^ state_d_array[ 1];        
		assign Col_Xor1516_array_01[18] =      state_d_array[18];
		assign Col_Xor1516_array_01[19] =      state_d_array[19];
		assign Col_Xor1516_array_01[20] =      state_d_array[20];
		assign Col_Xor1516_array_01[21] =      state_d_array[21];
		assign Col_Xor1516_array_01[22] =      state_d_array[22];
		assign Col_Xor1516_array_01[23] =      state_d_array[23];
		assign Col_Xor1516_array_01[24] =      state_d_array[24];
		assign Col_Xor1516_array_01[25] =      state_d_array[25];
		assign Col_Xor1516_array_01[26] =      state_d_array[26];
		assign Col_Xor1516_array_01[27] =      state_d_array[27];
		assign Col_Xor1516_array_01[28] =      state_d_array[28];
		assign Col_Xor1516_array_01[29] =      state_d_array[29];
		assign Col_Xor1516_array_01[ 0] =      state_d_array[ 0];
//-- Base: 02 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_02[ 2] =      state_d_array[ 2];																	
		assign Col_Xor1516_array_02[ 3] =      state_d_array[ 3];													
		assign Col_Xor1516_array_02[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_02[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_02[ 6] =      XOR_04_00;//state_d_array[ 6] ^ state_d_array[ 2];
		assign Col_Xor1516_array_02[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_02[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_02[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_02[10] =      state_d_array[10]; 												 												
		assign Col_Xor1516_array_02[11] =      state_d_array[11];
		assign Col_Xor1516_array_02[12] =      state_d_array[12];																					
		assign Col_Xor1516_array_02[13] =      state_d_array[13];
		assign Col_Xor1516_array_02[14] =      state_d_array[14];
		assign Col_Xor1516_array_02[15] =      state_d_array[15];
		assign Col_Xor1516_array_02[16] =      state_d_array[16];
		assign Col_Xor1516_array_02[17] =      XOR_15_00;// sel? state_d_array[17] ^ state_d_array[ 2] : state_d_array[17];        
		assign Col_Xor1516_array_02[18] =      XOR_16_00;// sel? state_d_array[18] : state_d_array[18] ^ state_d_array[ 2];        
		assign Col_Xor1516_array_02[19] =      state_d_array[19];
		assign Col_Xor1516_array_02[20] =      state_d_array[20];
		assign Col_Xor1516_array_02[21] =      state_d_array[21];
		assign Col_Xor1516_array_02[22] =      state_d_array[22];
		assign Col_Xor1516_array_02[23] =      state_d_array[23];
		assign Col_Xor1516_array_02[24] =      state_d_array[24];
		assign Col_Xor1516_array_02[25] =      state_d_array[25];
		assign Col_Xor1516_array_02[26] =      state_d_array[26];
		assign Col_Xor1516_array_02[27] =      state_d_array[27];
		assign Col_Xor1516_array_02[28] =      state_d_array[28];
		assign Col_Xor1516_array_02[29] =      state_d_array[29];
		assign Col_Xor1516_array_02[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_02[ 1] =      state_d_array[ 1];
//-- Base: 03 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_03[ 3] =      state_d_array[ 3];																	
		assign Col_Xor1516_array_03[ 4] =      state_d_array[ 4];													
		assign Col_Xor1516_array_03[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_03[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_03[ 7] =      XOR_04_00;//state_d_array[ 7] ^ state_d_array[ 3];
		assign Col_Xor1516_array_03[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_03[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_03[10] =      state_d_array[10];
		assign Col_Xor1516_array_03[11] =      state_d_array[11]; 												 												
		assign Col_Xor1516_array_03[12] =      state_d_array[12];
		assign Col_Xor1516_array_03[13] =      state_d_array[13];																					
		assign Col_Xor1516_array_03[14] =      state_d_array[14];
		assign Col_Xor1516_array_03[15] =      state_d_array[15];
		assign Col_Xor1516_array_03[16] =      state_d_array[16];
		assign Col_Xor1516_array_03[17] =      state_d_array[17];
		assign Col_Xor1516_array_03[18] =      XOR_15_00;// sel? state_d_array[18] ^ state_d_array[ 3] : state_d_array[18];        
		assign Col_Xor1516_array_03[19] =      XOR_16_00;// sel? state_d_array[19] : state_d_array[19] ^ state_d_array[ 3];        
		assign Col_Xor1516_array_03[20] =      state_d_array[20];
		assign Col_Xor1516_array_03[21] =      state_d_array[21];
		assign Col_Xor1516_array_03[22] =      state_d_array[22];
		assign Col_Xor1516_array_03[23] =      state_d_array[23];
		assign Col_Xor1516_array_03[24] =      state_d_array[24];
		assign Col_Xor1516_array_03[25] =      state_d_array[25];
		assign Col_Xor1516_array_03[26] =      state_d_array[26];
		assign Col_Xor1516_array_03[27] =      state_d_array[27];
		assign Col_Xor1516_array_03[28] =      state_d_array[28];
		assign Col_Xor1516_array_03[29] =      state_d_array[29];
		assign Col_Xor1516_array_03[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_03[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_03[ 2] =      state_d_array[ 2];
//-- Base: 04 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_04[ 4] =      state_d_array[ 4];																	
		assign Col_Xor1516_array_04[ 5] =      state_d_array[ 5];													
		assign Col_Xor1516_array_04[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_04[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_04[ 8] =      XOR_04_00;//state_d_array[ 8] ^ state_d_array[ 4];
		assign Col_Xor1516_array_04[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_04[10] =      state_d_array[10];
		assign Col_Xor1516_array_04[11] =      state_d_array[11];
		assign Col_Xor1516_array_04[12] =      state_d_array[12]; 												 												
		assign Col_Xor1516_array_04[13] =      state_d_array[13];
		assign Col_Xor1516_array_04[14] =      state_d_array[14];																					
		assign Col_Xor1516_array_04[15] =      state_d_array[15];
		assign Col_Xor1516_array_04[16] =      state_d_array[16];
		assign Col_Xor1516_array_04[17] =      state_d_array[17];
		assign Col_Xor1516_array_04[18] =      state_d_array[18];
		assign Col_Xor1516_array_04[19] =      XOR_15_00;//sel? state_d_array[19] ^ state_d_array[ 4] : state_d_array[19];        
		assign Col_Xor1516_array_04[20] =      XOR_16_00;//sel? state_d_array[20] : state_d_array[20] ^ state_d_array[ 4];        
		assign Col_Xor1516_array_04[21] =      state_d_array[21];
		assign Col_Xor1516_array_04[22] =      state_d_array[22];
		assign Col_Xor1516_array_04[23] =      state_d_array[23];
		assign Col_Xor1516_array_04[24] =      state_d_array[24];
		assign Col_Xor1516_array_04[25] =      state_d_array[25];
		assign Col_Xor1516_array_04[26] =      state_d_array[26];
		assign Col_Xor1516_array_04[27] =      state_d_array[27];
		assign Col_Xor1516_array_04[28] =      state_d_array[28];
		assign Col_Xor1516_array_04[29] =      state_d_array[29];
		assign Col_Xor1516_array_04[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_04[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_04[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_04[ 3] =      state_d_array[ 3];
//-- Base: 05 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_05[ 5] =      state_d_array[ 5];																	
		assign Col_Xor1516_array_05[ 6] =      state_d_array[ 6];													
		assign Col_Xor1516_array_05[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_05[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_05[ 9] =      XOR_04_00;//state_d_array[ 9] ^ state_d_array[ 5];
		assign Col_Xor1516_array_05[10] =      state_d_array[10];
		assign Col_Xor1516_array_05[11] =      state_d_array[11];
		assign Col_Xor1516_array_05[12] =      state_d_array[12];
		assign Col_Xor1516_array_05[13] =      state_d_array[13]; 												 												
		assign Col_Xor1516_array_05[14] =      state_d_array[14];
		assign Col_Xor1516_array_05[15] =      state_d_array[15];																					
		assign Col_Xor1516_array_05[16] =      state_d_array[16];
		assign Col_Xor1516_array_05[17] =      state_d_array[17];
		assign Col_Xor1516_array_05[18] =      state_d_array[18];
		assign Col_Xor1516_array_05[19] =      state_d_array[19];
		assign Col_Xor1516_array_05[20] =      XOR_15_00;//sel? state_d_array[20] ^ state_d_array[ 5] : state_d_array[20];        
		assign Col_Xor1516_array_05[21] =      XOR_16_00;//sel? state_d_array[21] : state_d_array[21] ^ state_d_array[ 5];        
		assign Col_Xor1516_array_05[22] =      state_d_array[22];
		assign Col_Xor1516_array_05[23] =      state_d_array[23];
		assign Col_Xor1516_array_05[24] =      state_d_array[24];
		assign Col_Xor1516_array_05[25] =      state_d_array[25];
		assign Col_Xor1516_array_05[26] =      state_d_array[26];
		assign Col_Xor1516_array_05[27] =      state_d_array[27];
		assign Col_Xor1516_array_05[28] =      state_d_array[28];
		assign Col_Xor1516_array_05[29] =      state_d_array[29];
		assign Col_Xor1516_array_05[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_05[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_05[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_05[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_05[ 4] =      state_d_array[ 4];
//-- Base: 06 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_06[ 6] =      state_d_array[ 6];																	
		assign Col_Xor1516_array_06[ 7] =      state_d_array[ 7];													
		assign Col_Xor1516_array_06[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_06[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_06[10] =      XOR_04_00;//state_d_array[10] ^ state_d_array[ 6];
		assign Col_Xor1516_array_06[11] =      state_d_array[11];
		assign Col_Xor1516_array_06[12] =      state_d_array[12];
		assign Col_Xor1516_array_06[13] =      state_d_array[13];
		assign Col_Xor1516_array_06[14] =      state_d_array[14]; 												 												
		assign Col_Xor1516_array_06[15] =      state_d_array[15];
		assign Col_Xor1516_array_06[16] =      state_d_array[16];																					
		assign Col_Xor1516_array_06[17] =      state_d_array[17];
		assign Col_Xor1516_array_06[18] =      state_d_array[18];
		assign Col_Xor1516_array_06[19] =      state_d_array[19];
		assign Col_Xor1516_array_06[20] =      state_d_array[20];
		assign Col_Xor1516_array_06[21] =      XOR_15_00;//sel? state_d_array[21] ^ state_d_array[ 6] : state_d_array[21];        
		assign Col_Xor1516_array_06[22] =      XOR_16_00;//sel? state_d_array[22] : state_d_array[22] ^ state_d_array[ 6];        
		assign Col_Xor1516_array_06[23] =      state_d_array[23];
		assign Col_Xor1516_array_06[24] =      state_d_array[24];
		assign Col_Xor1516_array_06[25] =      state_d_array[25];
		assign Col_Xor1516_array_06[26] =      state_d_array[26];
		assign Col_Xor1516_array_06[27] =      state_d_array[27];
		assign Col_Xor1516_array_06[28] =      state_d_array[28];
		assign Col_Xor1516_array_06[29] =      state_d_array[29];
		assign Col_Xor1516_array_06[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_06[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_06[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_06[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_06[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_06[ 5] =      state_d_array[ 5];
//-- Base: 07 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_07[ 7] =      state_d_array[ 7];																	
		assign Col_Xor1516_array_07[ 8] =      state_d_array[ 8];													
		assign Col_Xor1516_array_07[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_07[10] =      state_d_array[10];
		assign Col_Xor1516_array_07[11] =      XOR_04_00;//state_d_array[11] ^ state_d_array[ 7];
		assign Col_Xor1516_array_07[12] =      state_d_array[12];
		assign Col_Xor1516_array_07[13] =      state_d_array[13];
		assign Col_Xor1516_array_07[14] =      state_d_array[14];
		assign Col_Xor1516_array_07[15] =      state_d_array[15]; 												 												
		assign Col_Xor1516_array_07[16] =      state_d_array[16];
		assign Col_Xor1516_array_07[17] =      state_d_array[17];																					
		assign Col_Xor1516_array_07[18] =      state_d_array[18];
		assign Col_Xor1516_array_07[19] =      state_d_array[19];
		assign Col_Xor1516_array_07[20] =      state_d_array[20];
		assign Col_Xor1516_array_07[21] =      state_d_array[21];
		assign Col_Xor1516_array_07[22] =      XOR_15_00;//sel? state_d_array[22] ^ state_d_array[ 7] : state_d_array[22];        
		assign Col_Xor1516_array_07[23] =      XOR_16_00;//sel? state_d_array[23] : state_d_array[23] ^ state_d_array[ 7];        
		assign Col_Xor1516_array_07[24] =      state_d_array[24];
		assign Col_Xor1516_array_07[25] =      state_d_array[25];
		assign Col_Xor1516_array_07[26] =      state_d_array[26];
		assign Col_Xor1516_array_07[27] =      state_d_array[27];
		assign Col_Xor1516_array_07[28] =      state_d_array[28];
		assign Col_Xor1516_array_07[29] =      state_d_array[29];
		assign Col_Xor1516_array_07[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_07[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_07[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_07[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_07[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_07[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_07[ 6] =      state_d_array[ 6];
//-- Base: 08 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_08[ 8] =      state_d_array[ 8];																	
		assign Col_Xor1516_array_08[ 9] =      state_d_array[ 9];													
		assign Col_Xor1516_array_08[10] =      state_d_array[10];
		assign Col_Xor1516_array_08[11] =      state_d_array[11];
		assign Col_Xor1516_array_08[12] =      XOR_04_00;//state_d_array[12] ^ state_d_array[ 8];
		assign Col_Xor1516_array_08[13] =      state_d_array[13];
		assign Col_Xor1516_array_08[14] =      state_d_array[14];
		assign Col_Xor1516_array_08[15] =      state_d_array[15];
		assign Col_Xor1516_array_08[16] =      state_d_array[16]; 												 												
		assign Col_Xor1516_array_08[17] =      state_d_array[17];
		assign Col_Xor1516_array_08[18] =      state_d_array[18];																					
		assign Col_Xor1516_array_08[19] =      state_d_array[19];
		assign Col_Xor1516_array_08[20] =      state_d_array[20];
		assign Col_Xor1516_array_08[21] =      state_d_array[21];
		assign Col_Xor1516_array_08[22] =      state_d_array[22];
		assign Col_Xor1516_array_08[23] =      XOR_15_00;//sel? state_d_array[23] ^ state_d_array[ 8] : state_d_array[23];        
		assign Col_Xor1516_array_08[24] =      XOR_16_00;//sel? state_d_array[24] : state_d_array[24] ^ state_d_array[ 8];        
		assign Col_Xor1516_array_08[25] =      state_d_array[25];
		assign Col_Xor1516_array_08[26] =      state_d_array[26];
		assign Col_Xor1516_array_08[27] =      state_d_array[27];
		assign Col_Xor1516_array_08[28] =      state_d_array[28];
		assign Col_Xor1516_array_08[29] =      state_d_array[29];
		assign Col_Xor1516_array_08[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_08[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_08[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_08[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_08[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_08[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_08[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_08[ 7] =      state_d_array[ 7];
//-- Base: 09 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_09[ 9] =      state_d_array[ 9];																	
		assign Col_Xor1516_array_09[10] =      state_d_array[10];													
		assign Col_Xor1516_array_09[11] =      state_d_array[11];
		assign Col_Xor1516_array_09[12] =      state_d_array[12];
		assign Col_Xor1516_array_09[13] =      XOR_04_00;//state_d_array[13] ^ state_d_array[ 9];
		assign Col_Xor1516_array_09[14] =      state_d_array[14];
		assign Col_Xor1516_array_09[15] =      state_d_array[15];
		assign Col_Xor1516_array_09[16] =      state_d_array[16];
		assign Col_Xor1516_array_09[17] =      state_d_array[17]; 												 												
		assign Col_Xor1516_array_09[18] =      state_d_array[18];
		assign Col_Xor1516_array_09[19] =      state_d_array[19];																					
		assign Col_Xor1516_array_09[20] =      state_d_array[20];
		assign Col_Xor1516_array_09[21] =      state_d_array[21];
		assign Col_Xor1516_array_09[22] =      state_d_array[22];
		assign Col_Xor1516_array_09[23] =      state_d_array[23];
		assign Col_Xor1516_array_09[24] =      XOR_15_00;//sel? state_d_array[24] ^ state_d_array[ 9] : state_d_array[24];        
		assign Col_Xor1516_array_09[25] =      XOR_16_00;//sel? state_d_array[25] : state_d_array[25] ^ state_d_array[ 9];        
		assign Col_Xor1516_array_09[26] =      state_d_array[26];
		assign Col_Xor1516_array_09[27] =      state_d_array[27];
		assign Col_Xor1516_array_09[28] =      state_d_array[28];
		assign Col_Xor1516_array_09[29] =      state_d_array[29];
		assign Col_Xor1516_array_09[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_09[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_09[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_09[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_09[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_09[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_09[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_09[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_09[ 8] =      state_d_array[ 8];
//-- Base: 10 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_10[10] =      state_d_array[10];																	
		assign Col_Xor1516_array_10[11] =      state_d_array[11];													
		assign Col_Xor1516_array_10[12] =      state_d_array[12];
		assign Col_Xor1516_array_10[13] =      state_d_array[13];
		assign Col_Xor1516_array_10[14] =      XOR_04_00;//state_d_array[14] ^ state_d_array[10];
		assign Col_Xor1516_array_10[15] =      state_d_array[15];
		assign Col_Xor1516_array_10[16] =      state_d_array[16];
		assign Col_Xor1516_array_10[17] =      state_d_array[17];
		assign Col_Xor1516_array_10[18] =      state_d_array[18]; 												 												
		assign Col_Xor1516_array_10[19] =      state_d_array[19];
		assign Col_Xor1516_array_10[20] =      state_d_array[20];																					
		assign Col_Xor1516_array_10[21] =      state_d_array[21];
		assign Col_Xor1516_array_10[22] =      state_d_array[22];
		assign Col_Xor1516_array_10[23] =      state_d_array[23];
		assign Col_Xor1516_array_10[24] =      state_d_array[24];
		assign Col_Xor1516_array_10[25] =      XOR_15_00;//sel? state_d_array[25] ^ state_d_array[10] : state_d_array[25];        
		assign Col_Xor1516_array_10[26] =      XOR_16_00;//sel? state_d_array[26] : state_d_array[26] ^ state_d_array[10];        
		assign Col_Xor1516_array_10[27] =      state_d_array[27];
		assign Col_Xor1516_array_10[28] =      state_d_array[28];
		assign Col_Xor1516_array_10[29] =      state_d_array[29];
		assign Col_Xor1516_array_10[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_10[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_10[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_10[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_10[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_10[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_10[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_10[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_10[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_10[ 9] =      state_d_array[ 9];
//-- Base: 11 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_11[11] =      state_d_array[11];																	
		assign Col_Xor1516_array_11[12] =      state_d_array[12];													
		assign Col_Xor1516_array_11[13] =      state_d_array[13];
		assign Col_Xor1516_array_11[14] =      state_d_array[14];
		assign Col_Xor1516_array_11[15] =      XOR_04_00;//state_d_array[15] ^ state_d_array[11];
		assign Col_Xor1516_array_11[16] =      state_d_array[16];
		assign Col_Xor1516_array_11[17] =      state_d_array[17];
		assign Col_Xor1516_array_11[18] =      state_d_array[18];
		assign Col_Xor1516_array_11[19] =      state_d_array[19]; 												 												
		assign Col_Xor1516_array_11[20] =      state_d_array[20];
		assign Col_Xor1516_array_11[21] =      state_d_array[21];																					
		assign Col_Xor1516_array_11[22] =      state_d_array[22];
		assign Col_Xor1516_array_11[23] =      state_d_array[23];
		assign Col_Xor1516_array_11[24] =      state_d_array[24];
		assign Col_Xor1516_array_11[25] =      state_d_array[25];
		assign Col_Xor1516_array_11[26] =      XOR_15_00;//sel? state_d_array[26] ^ state_d_array[11] : state_d_array[26];        
		assign Col_Xor1516_array_11[27] =      XOR_16_00;//sel? state_d_array[27] : state_d_array[27] ^ state_d_array[11];        
		assign Col_Xor1516_array_11[28] =      state_d_array[28];
		assign Col_Xor1516_array_11[29] =      state_d_array[29];
		assign Col_Xor1516_array_11[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_11[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_11[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_11[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_11[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_11[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_11[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_11[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_11[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_11[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_11[10] =      state_d_array[10];
//-- Base: 12 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_12[12] =      state_d_array[12];																	
		assign Col_Xor1516_array_12[13] =      state_d_array[13];													
		assign Col_Xor1516_array_12[14] =      state_d_array[14];
		assign Col_Xor1516_array_12[15] =      state_d_array[15];
		assign Col_Xor1516_array_12[16] =      XOR_04_00;//state_d_array[16] ^ state_d_array[12];
		assign Col_Xor1516_array_12[17] =      state_d_array[17];
		assign Col_Xor1516_array_12[18] =      state_d_array[18];
		assign Col_Xor1516_array_12[19] =      state_d_array[19];
		assign Col_Xor1516_array_12[20] =      state_d_array[20]; 												 												
		assign Col_Xor1516_array_12[21] =      state_d_array[21];
		assign Col_Xor1516_array_12[22] =      state_d_array[22];																					
		assign Col_Xor1516_array_12[23] =      state_d_array[23];
		assign Col_Xor1516_array_12[24] =      state_d_array[24];
		assign Col_Xor1516_array_12[25] =      state_d_array[25];
		assign Col_Xor1516_array_12[26] =      state_d_array[26];
		assign Col_Xor1516_array_12[27] =      XOR_15_00;//sel? state_d_array[27] ^ state_d_array[12] : state_d_array[27];        
		assign Col_Xor1516_array_12[28] =      XOR_16_00;//sel? state_d_array[28] : state_d_array[28] ^ state_d_array[12];        
		assign Col_Xor1516_array_12[29] =      state_d_array[29];
		assign Col_Xor1516_array_12[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_12[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_12[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_12[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_12[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_12[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_12[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_12[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_12[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_12[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_12[10] =      state_d_array[10];
		assign Col_Xor1516_array_12[11] =      state_d_array[11];
//-- Base: 13 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_13[13] =      state_d_array[13];																	
		assign Col_Xor1516_array_13[14] =      state_d_array[14];													
		assign Col_Xor1516_array_13[15] =      state_d_array[15];
		assign Col_Xor1516_array_13[16] =      state_d_array[16];
		assign Col_Xor1516_array_13[17] =      XOR_04_00;//state_d_array[17] ^ state_d_array[13];
		assign Col_Xor1516_array_13[18] =      state_d_array[18];
		assign Col_Xor1516_array_13[19] =      state_d_array[19];
		assign Col_Xor1516_array_13[20] =      state_d_array[20];
		assign Col_Xor1516_array_13[21] =      state_d_array[21]; 												 												
		assign Col_Xor1516_array_13[22] =      state_d_array[22];
		assign Col_Xor1516_array_13[23] =      state_d_array[23];																					
		assign Col_Xor1516_array_13[24] =      state_d_array[24];
		assign Col_Xor1516_array_13[25] =      state_d_array[25];
		assign Col_Xor1516_array_13[26] =      state_d_array[26];
		assign Col_Xor1516_array_13[27] =      state_d_array[27];
		assign Col_Xor1516_array_13[28] =      XOR_15_00;//sel? state_d_array[28] ^ state_d_array[13] : state_d_array[28];        
		assign Col_Xor1516_array_13[29] =      XOR_16_00;//sel? state_d_array[29] : state_d_array[29] ^ state_d_array[13];        
		assign Col_Xor1516_array_13[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_13[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_13[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_13[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_13[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_13[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_13[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_13[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_13[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_13[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_13[10] =      state_d_array[10];
		assign Col_Xor1516_array_13[11] =      state_d_array[11];
		assign Col_Xor1516_array_13[12] =      state_d_array[12];
//-- Base: 14 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_14[14] =      state_d_array[14];																	
		assign Col_Xor1516_array_14[15] =      state_d_array[15];													
		assign Col_Xor1516_array_14[16] =      state_d_array[16];
		assign Col_Xor1516_array_14[17] =      state_d_array[17];
		assign Col_Xor1516_array_14[18] =      XOR_04_00;//state_d_array[18] ^ state_d_array[14];
		assign Col_Xor1516_array_14[19] =      state_d_array[19];
		assign Col_Xor1516_array_14[20] =      state_d_array[20];
		assign Col_Xor1516_array_14[21] =      state_d_array[21];
		assign Col_Xor1516_array_14[22] =      state_d_array[22]; 												 												
		assign Col_Xor1516_array_14[23] =      state_d_array[23];
		assign Col_Xor1516_array_14[24] =      state_d_array[24];																					
		assign Col_Xor1516_array_14[25] =      state_d_array[25];
		assign Col_Xor1516_array_14[26] =      state_d_array[26];
		assign Col_Xor1516_array_14[27] =      state_d_array[27];
		assign Col_Xor1516_array_14[28] =      state_d_array[28];
		assign Col_Xor1516_array_14[29] =      XOR_15_00;//sel? state_d_array[29] ^ state_d_array[14] : state_d_array[29];        
		assign Col_Xor1516_array_14[ 0] =      XOR_16_00;//sel? state_d_array[ 0] : state_d_array[ 0] ^ state_d_array[14];        
		assign Col_Xor1516_array_14[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_14[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_14[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_14[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_14[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_14[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_14[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_14[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_14[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_14[10] =      state_d_array[10];
		assign Col_Xor1516_array_14[11] =      state_d_array[11];
		assign Col_Xor1516_array_14[12] =      state_d_array[12];
		assign Col_Xor1516_array_14[13] =      state_d_array[13];
//-- Base: 15 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_15[15] =      state_d_array[15];																	
		assign Col_Xor1516_array_15[16] =      state_d_array[16];													
		assign Col_Xor1516_array_15[17] =      state_d_array[17];
		assign Col_Xor1516_array_15[18] =      state_d_array[18];
		assign Col_Xor1516_array_15[19] =      XOR_04_00;//state_d_array[19] ^ state_d_array[15];
		assign Col_Xor1516_array_15[20] =      state_d_array[20];
		assign Col_Xor1516_array_15[21] =      state_d_array[21];
		assign Col_Xor1516_array_15[22] =      state_d_array[22];
		assign Col_Xor1516_array_15[23] =      state_d_array[23]; 												 												
		assign Col_Xor1516_array_15[24] =      state_d_array[24];
		assign Col_Xor1516_array_15[25] =      state_d_array[25];																					
		assign Col_Xor1516_array_15[26] =      state_d_array[26];
		assign Col_Xor1516_array_15[27] =      state_d_array[27];
		assign Col_Xor1516_array_15[28] =      state_d_array[28];
		assign Col_Xor1516_array_15[29] =      state_d_array[29];
		assign Col_Xor1516_array_15[ 0] =      XOR_15_00;//sel? state_d_array[ 0] ^ state_d_array[15] : state_d_array[ 0];        
		assign Col_Xor1516_array_15[ 1] =      XOR_16_00;//sel? state_d_array[ 1] : state_d_array[ 1] ^ state_d_array[15];        
		assign Col_Xor1516_array_15[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_15[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_15[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_15[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_15[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_15[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_15[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_15[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_15[10] =      state_d_array[10];
		assign Col_Xor1516_array_15[11] =      state_d_array[11];
		assign Col_Xor1516_array_15[12] =      state_d_array[12];
		assign Col_Xor1516_array_15[13] =      state_d_array[13];
		assign Col_Xor1516_array_15[14] =      state_d_array[14];
//-- Base: 16 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_16[16] =      state_d_array[16];																	
		assign Col_Xor1516_array_16[17] =      state_d_array[17];													
		assign Col_Xor1516_array_16[18] =      state_d_array[18];
		assign Col_Xor1516_array_16[19] =      state_d_array[19];
		assign Col_Xor1516_array_16[20] =      XOR_04_00;//state_d_array[20] ^ state_d_array[16];
		assign Col_Xor1516_array_16[21] =      state_d_array[21];
		assign Col_Xor1516_array_16[22] =      state_d_array[22];
		assign Col_Xor1516_array_16[23] =      state_d_array[23];
		assign Col_Xor1516_array_16[24] =      state_d_array[24]; 												 												
		assign Col_Xor1516_array_16[25] =      state_d_array[25];
		assign Col_Xor1516_array_16[26] =      state_d_array[26];																					
		assign Col_Xor1516_array_16[27] =      state_d_array[27];
		assign Col_Xor1516_array_16[28] =      state_d_array[28];
		assign Col_Xor1516_array_16[29] =      state_d_array[29];
		assign Col_Xor1516_array_16[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_16[ 1] =      XOR_15_00;//sel? state_d_array[ 1] ^ state_d_array[16] : state_d_array[ 1];        
		assign Col_Xor1516_array_16[ 2] =      XOR_16_00;//sel? state_d_array[ 2] : state_d_array[ 2] ^ state_d_array[16];        
		assign Col_Xor1516_array_16[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_16[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_16[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_16[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_16[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_16[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_16[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_16[10] =      state_d_array[10];
		assign Col_Xor1516_array_16[11] =      state_d_array[11];
		assign Col_Xor1516_array_16[12] =      state_d_array[12];
		assign Col_Xor1516_array_16[13] =      state_d_array[13];
		assign Col_Xor1516_array_16[14] =      state_d_array[14];
		assign Col_Xor1516_array_16[15] =      state_d_array[15];
//-- Base: 17 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_17[17] =      state_d_array[17];																	
		assign Col_Xor1516_array_17[18] =      state_d_array[18];													
		assign Col_Xor1516_array_17[19] =      state_d_array[19];
		assign Col_Xor1516_array_17[20] =      state_d_array[20];
		assign Col_Xor1516_array_17[21] =      XOR_04_00;//state_d_array[21] ^ state_d_array[17];
		assign Col_Xor1516_array_17[22] =      state_d_array[22];
		assign Col_Xor1516_array_17[23] =      state_d_array[23];
		assign Col_Xor1516_array_17[24] =      state_d_array[24];
		assign Col_Xor1516_array_17[25] =      state_d_array[25]; 												 												
		assign Col_Xor1516_array_17[26] =      state_d_array[26];
		assign Col_Xor1516_array_17[27] =      state_d_array[27];																					
		assign Col_Xor1516_array_17[28] =      state_d_array[28];
		assign Col_Xor1516_array_17[29] =      state_d_array[29];
		assign Col_Xor1516_array_17[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_17[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_17[ 2] =      XOR_15_00;//sel? state_d_array[ 2] ^ state_d_array[17] : state_d_array[ 2];        
		assign Col_Xor1516_array_17[ 3] =      XOR_16_00;//sel? state_d_array[ 3] : state_d_array[ 3] ^ state_d_array[17];        
		assign Col_Xor1516_array_17[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_17[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_17[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_17[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_17[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_17[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_17[10] =      state_d_array[10];
		assign Col_Xor1516_array_17[11] =      state_d_array[11];
		assign Col_Xor1516_array_17[12] =      state_d_array[12];
		assign Col_Xor1516_array_17[13] =      state_d_array[13];
		assign Col_Xor1516_array_17[14] =      state_d_array[14];
		assign Col_Xor1516_array_17[15] =      state_d_array[15];
		assign Col_Xor1516_array_17[16] =      state_d_array[16];
//-- Base: 18 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_18[18] =      state_d_array[18];																	
		assign Col_Xor1516_array_18[19] =      state_d_array[19];													
		assign Col_Xor1516_array_18[20] =      state_d_array[20];
		assign Col_Xor1516_array_18[21] =      state_d_array[21];
		assign Col_Xor1516_array_18[22] =      XOR_04_00;//state_d_array[22] ^ state_d_array[18];
		assign Col_Xor1516_array_18[23] =      state_d_array[23];
		assign Col_Xor1516_array_18[24] =      state_d_array[24];
		assign Col_Xor1516_array_18[25] =      state_d_array[25];
		assign Col_Xor1516_array_18[26] =      state_d_array[26]; 												 												
		assign Col_Xor1516_array_18[27] =      state_d_array[27];
		assign Col_Xor1516_array_18[28] =      state_d_array[28];																					
		assign Col_Xor1516_array_18[29] =      state_d_array[29];
		assign Col_Xor1516_array_18[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_18[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_18[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_18[ 3] =      XOR_15_00;//sel? state_d_array[ 3] ^ state_d_array[18] : state_d_array[ 3];        
		assign Col_Xor1516_array_18[ 4] =      XOR_16_00;//sel? state_d_array[ 4] : state_d_array[ 4] ^ state_d_array[18];        
		assign Col_Xor1516_array_18[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_18[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_18[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_18[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_18[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_18[10] =      state_d_array[10];
		assign Col_Xor1516_array_18[11] =      state_d_array[11];
		assign Col_Xor1516_array_18[12] =      state_d_array[12];
		assign Col_Xor1516_array_18[13] =      state_d_array[13];
		assign Col_Xor1516_array_18[14] =      state_d_array[14];
		assign Col_Xor1516_array_18[15] =      state_d_array[15];
		assign Col_Xor1516_array_18[16] =      state_d_array[16];
		assign Col_Xor1516_array_18[17] =      state_d_array[17];
//-- Base: 19 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_19[19] =      state_d_array[19];																	
		assign Col_Xor1516_array_19[20] =      state_d_array[20];													
		assign Col_Xor1516_array_19[21] =      state_d_array[21];
		assign Col_Xor1516_array_19[22] =      state_d_array[22];
		assign Col_Xor1516_array_19[23] =      XOR_04_00;//state_d_array[23] ^ state_d_array[19];
		assign Col_Xor1516_array_19[24] =      state_d_array[24];
		assign Col_Xor1516_array_19[25] =      state_d_array[25];
		assign Col_Xor1516_array_19[26] =      state_d_array[26];
		assign Col_Xor1516_array_19[27] =      state_d_array[27]; 												 												
		assign Col_Xor1516_array_19[28] =      state_d_array[28];
		assign Col_Xor1516_array_19[29] =      state_d_array[29];																					
		assign Col_Xor1516_array_19[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_19[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_19[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_19[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_19[ 4] =      XOR_15_00;//sel? state_d_array[ 4] ^ state_d_array[19] : state_d_array[ 4];        
		assign Col_Xor1516_array_19[ 5] =      XOR_16_00;//sel? state_d_array[ 5] : state_d_array[ 5] ^ state_d_array[19];        
		assign Col_Xor1516_array_19[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_19[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_19[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_19[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_19[10] =      state_d_array[10];
		assign Col_Xor1516_array_19[11] =      state_d_array[11];
		assign Col_Xor1516_array_19[12] =      state_d_array[12];
		assign Col_Xor1516_array_19[13] =      state_d_array[13];
		assign Col_Xor1516_array_19[14] =      state_d_array[14];
		assign Col_Xor1516_array_19[15] =      state_d_array[15];
		assign Col_Xor1516_array_19[16] =      state_d_array[16];
		assign Col_Xor1516_array_19[17] =      state_d_array[17];
		assign Col_Xor1516_array_19[18] =      state_d_array[18];
//-- Base: 20 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_20[20] =      state_d_array[20];																	
		assign Col_Xor1516_array_20[21] =      state_d_array[21];													
		assign Col_Xor1516_array_20[22] =      state_d_array[22];
		assign Col_Xor1516_array_20[23] =      state_d_array[23];
		assign Col_Xor1516_array_20[24] =      XOR_04_00;//state_d_array[24] ^ state_d_array[20];
		assign Col_Xor1516_array_20[25] =      state_d_array[25];
		assign Col_Xor1516_array_20[26] =      state_d_array[26];
		assign Col_Xor1516_array_20[27] =      state_d_array[27];
		assign Col_Xor1516_array_20[28] =      state_d_array[28]; 												 												
		assign Col_Xor1516_array_20[29] =      state_d_array[29];
		assign Col_Xor1516_array_20[ 0] =      state_d_array[ 0];																					
		assign Col_Xor1516_array_20[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_20[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_20[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_20[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_20[ 5] =      XOR_15_00;//sel? state_d_array[ 5] ^ state_d_array[20] : state_d_array[ 5];        
		assign Col_Xor1516_array_20[ 6] =      XOR_16_00;//sel? state_d_array[ 6] : state_d_array[ 6] ^ state_d_array[20];        
		assign Col_Xor1516_array_20[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_20[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_20[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_20[10] =      state_d_array[10];
		assign Col_Xor1516_array_20[11] =      state_d_array[11];
		assign Col_Xor1516_array_20[12] =      state_d_array[12];
		assign Col_Xor1516_array_20[13] =      state_d_array[13];
		assign Col_Xor1516_array_20[14] =      state_d_array[14];
		assign Col_Xor1516_array_20[15] =      state_d_array[15];
		assign Col_Xor1516_array_20[16] =      state_d_array[16];
		assign Col_Xor1516_array_20[17] =      state_d_array[17];
		assign Col_Xor1516_array_20[18] =      state_d_array[18];
		assign Col_Xor1516_array_20[19] =      state_d_array[19];
//-- Base: 21 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_21[21] =      state_d_array[21];																	
		assign Col_Xor1516_array_21[22] =      state_d_array[22];													
		assign Col_Xor1516_array_21[23] =      state_d_array[23];
		assign Col_Xor1516_array_21[24] =      state_d_array[24];
		assign Col_Xor1516_array_21[25] =      XOR_04_00;//state_d_array[25] ^ state_d_array[21];
		assign Col_Xor1516_array_21[26] =      state_d_array[26];
		assign Col_Xor1516_array_21[27] =      state_d_array[27];
		assign Col_Xor1516_array_21[28] =      state_d_array[28];
		assign Col_Xor1516_array_21[29] =      state_d_array[29]; 												 												
		assign Col_Xor1516_array_21[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_21[ 1] =      state_d_array[ 1];																					
		assign Col_Xor1516_array_21[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_21[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_21[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_21[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_21[ 6] =      XOR_15_00;//sel? state_d_array[ 6] ^ state_d_array[21] : state_d_array[ 6];        
		assign Col_Xor1516_array_21[ 7] =      XOR_16_00;//sel? state_d_array[ 7] : state_d_array[ 7] ^ state_d_array[21];        
		assign Col_Xor1516_array_21[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_21[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_21[10] =      state_d_array[10];
		assign Col_Xor1516_array_21[11] =      state_d_array[11];
		assign Col_Xor1516_array_21[12] =      state_d_array[12];
		assign Col_Xor1516_array_21[13] =      state_d_array[13];
		assign Col_Xor1516_array_21[14] =      state_d_array[14];
		assign Col_Xor1516_array_21[15] =      state_d_array[15];
		assign Col_Xor1516_array_21[16] =      state_d_array[16];
		assign Col_Xor1516_array_21[17] =      state_d_array[17];
		assign Col_Xor1516_array_21[18] =      state_d_array[18];
		assign Col_Xor1516_array_21[19] =      state_d_array[19];
		assign Col_Xor1516_array_21[20] =      state_d_array[20];
//-- Base: 22 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_22[22] =      state_d_array[22];																	
		assign Col_Xor1516_array_22[23] =      state_d_array[23];													
		assign Col_Xor1516_array_22[24] =      state_d_array[24];
		assign Col_Xor1516_array_22[25] =      state_d_array[25];
		assign Col_Xor1516_array_22[26] =      XOR_04_00;//state_d_array[26] ^ state_d_array[22];
		assign Col_Xor1516_array_22[27] =      state_d_array[27];
		assign Col_Xor1516_array_22[28] =      state_d_array[28];
		assign Col_Xor1516_array_22[29] =      state_d_array[29];
		assign Col_Xor1516_array_22[ 0] =      state_d_array[ 0]; 												 												
		assign Col_Xor1516_array_22[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_22[ 2] =      state_d_array[ 2];																					
		assign Col_Xor1516_array_22[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_22[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_22[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_22[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_22[ 7] =      XOR_15_00;//sel? state_d_array[ 7] ^ state_d_array[22] : state_d_array[ 7];        
		assign Col_Xor1516_array_22[ 8] =      XOR_16_00;//sel? state_d_array[ 8] : state_d_array[ 8] ^ state_d_array[22];        
		assign Col_Xor1516_array_22[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_22[10] =      state_d_array[10];
		assign Col_Xor1516_array_22[11] =      state_d_array[11];
		assign Col_Xor1516_array_22[12] =      state_d_array[12];
		assign Col_Xor1516_array_22[13] =      state_d_array[13];
		assign Col_Xor1516_array_22[14] =      state_d_array[14];
		assign Col_Xor1516_array_22[15] =      state_d_array[15];
		assign Col_Xor1516_array_22[16] =      state_d_array[16];
		assign Col_Xor1516_array_22[17] =      state_d_array[17];
		assign Col_Xor1516_array_22[18] =      state_d_array[18];
		assign Col_Xor1516_array_22[19] =      state_d_array[19];
		assign Col_Xor1516_array_22[20] =      state_d_array[20];
		assign Col_Xor1516_array_22[21] =      state_d_array[21];
//-- Base: 23 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_23[23] =      state_d_array[23];																	
		assign Col_Xor1516_array_23[24] =      state_d_array[24];													
		assign Col_Xor1516_array_23[25] =      state_d_array[25];
		assign Col_Xor1516_array_23[26] =      state_d_array[26];
		assign Col_Xor1516_array_23[27] =      XOR_04_00;//state_d_array[27] ^ state_d_array[23];
		assign Col_Xor1516_array_23[28] =      state_d_array[28];
		assign Col_Xor1516_array_23[29] =      state_d_array[29];
		assign Col_Xor1516_array_23[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_23[ 1] =      state_d_array[ 1]; 												 												
		assign Col_Xor1516_array_23[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_23[ 3] =      state_d_array[ 3];																					
		assign Col_Xor1516_array_23[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_23[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_23[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_23[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_23[ 8] =      XOR_15_00;//sel? state_d_array[ 8] ^ state_d_array[23] : state_d_array[ 8];        
		assign Col_Xor1516_array_23[ 9] =      XOR_16_00;//sel? state_d_array[ 9] : state_d_array[ 9] ^ state_d_array[23];        
		assign Col_Xor1516_array_23[10] =      state_d_array[10];
		assign Col_Xor1516_array_23[11] =      state_d_array[11];
		assign Col_Xor1516_array_23[12] =      state_d_array[12];
		assign Col_Xor1516_array_23[13] =      state_d_array[13];
		assign Col_Xor1516_array_23[14] =      state_d_array[14];
		assign Col_Xor1516_array_23[15] =      state_d_array[15];
		assign Col_Xor1516_array_23[16] =      state_d_array[16];
		assign Col_Xor1516_array_23[17] =      state_d_array[17];
		assign Col_Xor1516_array_23[18] =      state_d_array[18];
		assign Col_Xor1516_array_23[19] =      state_d_array[19];
		assign Col_Xor1516_array_23[20] =      state_d_array[20];
		assign Col_Xor1516_array_23[21] =      state_d_array[21];
		assign Col_Xor1516_array_23[22] =      state_d_array[22];
//-- Base: 24 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_24[24] =      state_d_array[24];																	
		assign Col_Xor1516_array_24[25] =      state_d_array[25];													
		assign Col_Xor1516_array_24[26] =      state_d_array[26];
		assign Col_Xor1516_array_24[27] =      state_d_array[27];
		assign Col_Xor1516_array_24[28] =      XOR_04_00;//state_d_array[28] ^ state_d_array[24];
		assign Col_Xor1516_array_24[29] =      state_d_array[29];
		assign Col_Xor1516_array_24[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_24[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_24[ 2] =      state_d_array[ 2]; 												 												
		assign Col_Xor1516_array_24[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_24[ 4] =      state_d_array[ 4];																					
		assign Col_Xor1516_array_24[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_24[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_24[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_24[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_24[ 9] =      XOR_15_00;//sel? state_d_array[ 9] ^ state_d_array[24] : state_d_array[ 9];        
		assign Col_Xor1516_array_24[10] =      XOR_16_00;//sel? state_d_array[10] : state_d_array[10] ^ state_d_array[24];        
		assign Col_Xor1516_array_24[11] =      state_d_array[11];
		assign Col_Xor1516_array_24[12] =      state_d_array[12];
		assign Col_Xor1516_array_24[13] =      state_d_array[13];
		assign Col_Xor1516_array_24[14] =      state_d_array[14];
		assign Col_Xor1516_array_24[15] =      state_d_array[15];
		assign Col_Xor1516_array_24[16] =      state_d_array[16];
		assign Col_Xor1516_array_24[17] =      state_d_array[17];
		assign Col_Xor1516_array_24[18] =      state_d_array[18];
		assign Col_Xor1516_array_24[19] =      state_d_array[19];
		assign Col_Xor1516_array_24[20] =      state_d_array[20];
		assign Col_Xor1516_array_24[21] =      state_d_array[21];
		assign Col_Xor1516_array_24[22] =      state_d_array[22];
		assign Col_Xor1516_array_24[23] =      state_d_array[23];
//-- Base: 25 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_25[25] =      state_d_array[25];																	
		assign Col_Xor1516_array_25[26] =      state_d_array[26];													
		assign Col_Xor1516_array_25[27] =      state_d_array[27];
		assign Col_Xor1516_array_25[28] =      state_d_array[28];
		assign Col_Xor1516_array_25[29] =      XOR_04_00;//state_d_array[29] ^ state_d_array[25];
		assign Col_Xor1516_array_25[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_25[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_25[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_25[ 3] =      state_d_array[ 3]; 												 												
		assign Col_Xor1516_array_25[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_25[ 5] =      state_d_array[ 5];																					
		assign Col_Xor1516_array_25[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_25[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_25[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_25[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_25[10] =      XOR_15_00;//sel? state_d_array[10] ^ state_d_array[25] : state_d_array[10];        
		assign Col_Xor1516_array_25[11] =      XOR_16_00;//sel? state_d_array[11] : state_d_array[11] ^ state_d_array[25];        
		assign Col_Xor1516_array_25[12] =      state_d_array[12];
		assign Col_Xor1516_array_25[13] =      state_d_array[13];
		assign Col_Xor1516_array_25[14] =      state_d_array[14];
		assign Col_Xor1516_array_25[15] =      state_d_array[15];
		assign Col_Xor1516_array_25[16] =      state_d_array[16];
		assign Col_Xor1516_array_25[17] =      state_d_array[17];
		assign Col_Xor1516_array_25[18] =      state_d_array[18];
		assign Col_Xor1516_array_25[19] =      state_d_array[19];
		assign Col_Xor1516_array_25[20] =      state_d_array[20];
		assign Col_Xor1516_array_25[21] =      state_d_array[21];
		assign Col_Xor1516_array_25[22] =      state_d_array[22];
		assign Col_Xor1516_array_25[23] =      state_d_array[23];
		assign Col_Xor1516_array_25[24] =      state_d_array[24];
//-- Base: 26 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_26[26] =      state_d_array[26];																	
		assign Col_Xor1516_array_26[27] =      state_d_array[27];													
		assign Col_Xor1516_array_26[28] =      state_d_array[28];
		assign Col_Xor1516_array_26[29] =      state_d_array[29];
		assign Col_Xor1516_array_26[ 0] =      XOR_04_00;//state_d_array[ 0] ^ state_d_array[26];
		assign Col_Xor1516_array_26[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_26[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_26[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_26[ 4] =      state_d_array[ 4]; 												 												
		assign Col_Xor1516_array_26[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_26[ 6] =      state_d_array[ 6];																					
		assign Col_Xor1516_array_26[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_26[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_26[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_26[10] =      state_d_array[10];
		assign Col_Xor1516_array_26[11] =      XOR_15_00;//sel? state_d_array[11] ^ state_d_array[26] : state_d_array[11];        
		assign Col_Xor1516_array_26[12] =      XOR_16_00;//sel? state_d_array[12] : state_d_array[12] ^ state_d_array[26];        
		assign Col_Xor1516_array_26[13] =      state_d_array[13];
		assign Col_Xor1516_array_26[14] =      state_d_array[14];
		assign Col_Xor1516_array_26[15] =      state_d_array[15];
		assign Col_Xor1516_array_26[16] =      state_d_array[16];
		assign Col_Xor1516_array_26[17] =      state_d_array[17];
		assign Col_Xor1516_array_26[18] =      state_d_array[18];
		assign Col_Xor1516_array_26[19] =      state_d_array[19];
		assign Col_Xor1516_array_26[20] =      state_d_array[20];
		assign Col_Xor1516_array_26[21] =      state_d_array[21];
		assign Col_Xor1516_array_26[22] =      state_d_array[22];
		assign Col_Xor1516_array_26[23] =      state_d_array[23];
		assign Col_Xor1516_array_26[24] =      state_d_array[24];
		assign Col_Xor1516_array_26[25] =      state_d_array[25];
//-- Base: 27 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_27[27] =      state_d_array[27];																	
		assign Col_Xor1516_array_27[28] =      state_d_array[28];													
		assign Col_Xor1516_array_27[29] =      state_d_array[29];
		assign Col_Xor1516_array_27[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_27[ 1] =      XOR_04_00;//state_d_array[ 1] ^ state_d_array[27];
		assign Col_Xor1516_array_27[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_27[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_27[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_27[ 5] =      state_d_array[ 5]; 												 												
		assign Col_Xor1516_array_27[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_27[ 7] =      state_d_array[ 7];																					
		assign Col_Xor1516_array_27[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_27[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_27[10] =      state_d_array[10];
		assign Col_Xor1516_array_27[11] =      state_d_array[11];
		assign Col_Xor1516_array_27[12] =      XOR_15_00;//sel? state_d_array[12] ^ state_d_array[27] : state_d_array[12];        
		assign Col_Xor1516_array_27[13] =      XOR_16_00;//sel? state_d_array[13] : state_d_array[13] ^ state_d_array[27];        
		assign Col_Xor1516_array_27[14] =      state_d_array[14];
		assign Col_Xor1516_array_27[15] =      state_d_array[15];
		assign Col_Xor1516_array_27[16] =      state_d_array[16];
		assign Col_Xor1516_array_27[17] =      state_d_array[17];
		assign Col_Xor1516_array_27[18] =      state_d_array[18];
		assign Col_Xor1516_array_27[19] =      state_d_array[19];
		assign Col_Xor1516_array_27[20] =      state_d_array[20];
		assign Col_Xor1516_array_27[21] =      state_d_array[21];
		assign Col_Xor1516_array_27[22] =      state_d_array[22];
		assign Col_Xor1516_array_27[23] =      state_d_array[23];
		assign Col_Xor1516_array_27[24] =      state_d_array[24];
		assign Col_Xor1516_array_27[25] =      state_d_array[25];
		assign Col_Xor1516_array_27[26] =      state_d_array[26];
//-- Base: 28 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_28[28] =      state_d_array[28];																	
		assign Col_Xor1516_array_28[29] =      state_d_array[29];													
		assign Col_Xor1516_array_28[ 0] =      state_d_array[ 0];
		assign Col_Xor1516_array_28[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_28[ 2] =      XOR_04_00;//state_d_array[ 2] ^ state_d_array[28];
		assign Col_Xor1516_array_28[ 3] =      state_d_array[ 3];
		assign Col_Xor1516_array_28[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_28[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_28[ 6] =      state_d_array[ 6]; 												 												
		assign Col_Xor1516_array_28[ 7] =      state_d_array[ 7];
		assign Col_Xor1516_array_28[ 8] =      state_d_array[ 8];																					
		assign Col_Xor1516_array_28[ 9] =      state_d_array[ 9];
		assign Col_Xor1516_array_28[10] =      state_d_array[10];
		assign Col_Xor1516_array_28[11] =      state_d_array[11];
		assign Col_Xor1516_array_28[12] =      state_d_array[12];
		assign Col_Xor1516_array_28[13] =      XOR_15_00;//sel? state_d_array[13] ^ state_d_array[28] : state_d_array[13];        
		assign Col_Xor1516_array_28[14] =      XOR_16_00;//sel? state_d_array[14] : state_d_array[14] ^ state_d_array[28];        
		assign Col_Xor1516_array_28[15] =      state_d_array[15];
		assign Col_Xor1516_array_28[16] =      state_d_array[16];
		assign Col_Xor1516_array_28[17] =      state_d_array[17];
		assign Col_Xor1516_array_28[18] =      state_d_array[18];
		assign Col_Xor1516_array_28[19] =      state_d_array[19];
		assign Col_Xor1516_array_28[20] =      state_d_array[20];
		assign Col_Xor1516_array_28[21] =      state_d_array[21];
		assign Col_Xor1516_array_28[22] =      state_d_array[22];
		assign Col_Xor1516_array_28[23] =      state_d_array[23];
		assign Col_Xor1516_array_28[24] =      state_d_array[24];
		assign Col_Xor1516_array_28[25] =      state_d_array[25];
		assign Col_Xor1516_array_28[26] =      state_d_array[26];
		assign Col_Xor1516_array_28[27] =      state_d_array[27];
//-- Base: 29 -----------------------------------------------------------------------------
		assign Col_Xor1516_array_29[29] =      state_d_array[29];																	
		assign Col_Xor1516_array_29[ 0] =      state_d_array[ 0];													
		assign Col_Xor1516_array_29[ 1] =      state_d_array[ 1];
		assign Col_Xor1516_array_29[ 2] =      state_d_array[ 2];
		assign Col_Xor1516_array_29[ 3] =      XOR_04_00;//state_d_array[ 3] ^ state_d_array[29];
		assign Col_Xor1516_array_29[ 4] =      state_d_array[ 4];
		assign Col_Xor1516_array_29[ 5] =      state_d_array[ 5];
		assign Col_Xor1516_array_29[ 6] =      state_d_array[ 6];
		assign Col_Xor1516_array_29[ 7] =      state_d_array[ 7]; 												 												
		assign Col_Xor1516_array_29[ 8] =      state_d_array[ 8];
		assign Col_Xor1516_array_29[ 9] =      state_d_array[ 9];																					
		assign Col_Xor1516_array_29[10] =      state_d_array[10];
		assign Col_Xor1516_array_29[11] =      state_d_array[11];
		assign Col_Xor1516_array_29[12] =      state_d_array[12];
		assign Col_Xor1516_array_29[13] =      state_d_array[13];
		assign Col_Xor1516_array_29[14] =      XOR_15_00;//sel? state_d_array[14] ^ state_d_array[29] : state_d_array[14];        
		assign Col_Xor1516_array_29[15] =      XOR_16_00;//sel? state_d_array[15] : state_d_array[15] ^ state_d_array[29];        
		assign Col_Xor1516_array_29[16] =      state_d_array[16];
		assign Col_Xor1516_array_29[17] =      state_d_array[17];
		assign Col_Xor1516_array_29[18] =      state_d_array[18];
		assign Col_Xor1516_array_29[19] =      state_d_array[19];
		assign Col_Xor1516_array_29[20] =      state_d_array[20];
		assign Col_Xor1516_array_29[21] =      state_d_array[21];
		assign Col_Xor1516_array_29[22] =      state_d_array[22];
		assign Col_Xor1516_array_29[23] =      state_d_array[23];
		assign Col_Xor1516_array_29[24] =      state_d_array[24];
		assign Col_Xor1516_array_29[25] =      state_d_array[25];
		assign Col_Xor1516_array_29[26] =      state_d_array[26];
		assign Col_Xor1516_array_29[27] =      state_d_array[27];
		assign Col_Xor1516_array_29[28] =      state_d_array[28];
				
endmodule				                                          