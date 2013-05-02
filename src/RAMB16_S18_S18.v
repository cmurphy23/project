// $Id: RAMB16_S18_S18.v,v 1.2 2004/09/23 23:10:56 tmurphy1 Exp $
//------------------------------------------------------------------------------
// Copyright (c) 2003 TEXAS INSTRUMENTS, Inc.
// All rights reserved
//
// This is an UNPUBLISHED work created in the year stated above.
// TEXAS INSTRUMENTS owns all rights in and to the work and intends to
// maintain it and protect it as unpublished copyright. In the event
// of either inadvertant or deliberate publication, the above stated
// date shall be treated as the year of first publication. In the event
// of such publication, Texas Instruments intends to enforce its rights
// in the work under the copyright laws as a published work.
//
// These commodities are under U.S. Government distribution license
// control. As such, they are not be re-exported without prior approval
// from the U.S. Department of Commerce.
//
//------------------------------------------------------------------------------
// Module     : RAMB16_S36_S36.v   
// Author     : Kalyan Chakravadhanula
// Description: RAM model used in FPGA, a simulation model is below
// //------------------------------------------------------------------------------
//

module RAMB16_S18_S18
(
   // write port a
   WEA        ,		//always writing every sample
   ENA        ,
   SSRA       ,
   CLKA       , 
   ADDRA      ,
   DIPA       ,
   DIA        ,
   DOPA       ,
   DOA        ,
 
   // read port b
   WEB        ,		//always reading every sample
   ENB        ,
   SSRB       ,
   CLKB       , 
   ADDRB      ,
   DIPB       ,
   DIB        ,
   DOPB       ,
   DOB        
   );
  parameter DATA_WIDTH = 16;
  parameter PAR_WIDTH = 2;
  parameter ADDR_WIDTH = 10;
  parameter NUM_WORDS  = 1024;
  parameter INITVALUE = 0;    //for simulation only

  input                   WEA, WEB;
  input                   ENA, ENB;
  input                   SSRA, SSRB;   //SSRB not correctly simulated
  input                   CLKA, CLKB;   //CLKB not correctly simulated
  input [DATA_WIDTH -1:0] DIA, DIB;     //DIB not correctly simulated
  input [PAR_WIDTH-1:0]   DIPA, DIPB;   //Parity inputs.  Not simulated
  input [ADDR_WIDTH -1:0] ADDRA, ADDRB;

  output [DATA_WIDTH -1:0] DOA, DOB;    
  output [PAR_WIDTH -1:0]  DOPA, DOPB;  

  reg [DATA_WIDTH -1:0]    data_in [0 : NUM_WORDS -1];
  reg [PAR_WIDTH -1:0]     par_in [0 : NUM_WORDS -1];
  reg [DATA_WIDTH -1:0]    DOA,DOB;
  reg [PAR_WIDTH -1:0]     DOPA, DOPB;  

  integer                  i;


// For now use CLKA to clock writes to both ports A & B
always @(posedge CLKA or posedge SSRA)
if (SSRA)
  for (i=0; i<NUM_WORDS; i=i+1) 
  begin
    par_in[i] <= INITVALUE;
    data_in[i] <= INITVALUE;
  end
else
  begin
    if ((WEA) && (ENA))
    begin
      data_in[ADDRA] <= DIA;
      par_in[ADDRA] <= DIPA;
    end
    if ((WEB) && (ENB))
    begin
      data_in[ADDRB] <= DIB;
      par_in[ADDRB] <= DIPB;
    end
  end

always @(posedge CLKA or posedge SSRA) 
if (SSRA)
begin
  DOA <= {DATA_WIDTH{1'b0}};
  DOPA <= {PAR_WIDTH{1'b0}};
end
else
  if ((~WEA) && (ENA))
  begin
    DOA <= data_in[ADDRA];
    DOPA <= par_in[ADDRA];
  end

always @(posedge CLKB or posedge SSRB) 
if (SSRB)
begin
  DOB <= {DATA_WIDTH{1'b0}};
  DOPB <= {PAR_WIDTH{1'b0}};
end
else
  if ((~WEB) && (ENB))
  begin
    DOB <= data_in[ADDRB];
    DOPB <= par_in[ADDRB];
  end



endmodule

    
