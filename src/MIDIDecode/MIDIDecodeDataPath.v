`include "MIDIDecode.vh"

module MIDIDecodeDataPath(
		  input Clock,
		  input Reset,
		  input [7:0] message,
		  input[1:0] decodeType,
		  input firstControl,
		  input secondControl,
		  input thirdControl,
		  output messageValid,
		  output messageType,
		  output [9:0] delay,
		  output [7:0] veloc
			  );

   wire 		       typeWire;
   wire [9:0] 		       delayWire;
   wire [7:0] 		       velocityWire;
   reg 			       typeReg;
   reg [9:0] 		       delayReg;
   reg [7:0] 		       velocityReg;

   assign messageType = typeReg;
   assign delay = delayReg;
   assign veloc = velocityReg;
   

   always@(posedge Clock) begin
      if (Reset) begin
	 typeReg <= 0;
	 delayReg <= 0;
	 velocityReg <= 0;
      end
      else begin
	 if (firstControl)
	   typeReg <= typeWire;
	 else
	   typeReg <= typeReg;
	 if (secondControl)
	   delayReg <= delayWire;
	 else
	   delayReg <= delayReg;
	 if (thirdControl)
	   velocityReg <= velocityWire;
	 else
	   velocityReg <= velocityReg;
	 
      end // else: !if(Reset)
   end // always@ (posedge Clock)
   
   

//Decoder//

   MIDIDec  decoder(.Clock(Clock),
		   .Reset(Reset),
		   .message(message),
		   .decodeType(decodeType),
		   .messageValid(messageValid),
		   .messageType(typeWire),
		   .delay(delayWire),
		   .velocity(velocityWire));
   
		   
      
endmodule   
	 
   
