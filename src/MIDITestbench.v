`timescale 1ns/1ps

module MIDITestbench();
   localparam ClockFreq = 100_000_000;

   localparam Cycle = 10;

   reg Clock, Reset;

   reg [7:0] message;
   wire [1:0] decodeType;
   wire       firstControl;
   wire       secondControl;
   wire       thirdControl;
   wire       messageValid;
   wire       messageType;
   wire [9:0] delay;
   wire [7:0] velocity;
   reg 	      FIFOFull;
   reg 	      FIFOEmpty;
   reg 	      DataValid;
   wire       read_en;
   wire       waveReady;





   initial Clock = 1'b0;
   always #(5) Clock = ~Clock;


   initial begin
      Reset = 1'b1;
      #(Cycle);
      Reset = 1'b0;
      FIFOFull = 1'b0;
      FIFOEmpty = 1'b1;
      DataValid = 1'b0;
      #(Cycle);
      FIFOEmpty = 1'b0;
      message = 8'b1001_0010;
      DataValid = 1'b1;
      #(Cycle);
      message = 8'b0001_1010;
      #(Cycle);
      message = 8'b0000_1100;
      #(Cycle);
      message = 8'b1001_0111;
      #(Cycle);
      message = 8'b0000_1111;
      #(Cycle);
      message = 8'b0011_1100;
      #(Cycle);
      message = 8'b1111_0000;
      #(Cycle);
      message = 8'b1000_0000;
      #(Cycle);
      message = 8'b0001_1111;
      #(Cycle);
      message = 8'b0000_0011;
      #(Cycle);
      FIFOEmpty = 1;
      DataValid = 0;
      
      
      
      
      
      while (waveReady) #(Cycle);

      $finish();
      
      
   end
   


   //---|MIDIDecodeDataPath|------------------------------------------
   MIDIDecodeDataPath dataPath(.Clock(Clock),
			       .Reset(Reset),
			       .message(message),
			       .decodeType(decodeType),
			       .firstControl(firstControl),
			       .secondControl(secondControl),
			       .thirdControl(thirdControl),
			       .messageValid(messageValid),
			       .messageType(messageType),
			       .delay(delay),
			       .veloc(velocity));
   


   //--|MIDIDecodeControl|---------------------------------------------

   MIDIDecodeControl control(.Clock(Clock),
			     .Reset(Reset),
			     .FIFOFull(FIFOFull),
			     .FIFOEmpty(FIFOEmpty),
			     .DataValid(DataValid),
			     .messageValid(messageValid),
			     .read(read_en),
			     .decodeType(decodeType),
			     .firstByte(firstControl),
			     .secondByte(secondControl),
			     .thirdByte(thirdControl),
			     .waveReady(waveReady));
   
endmodule // MIDITestbench
