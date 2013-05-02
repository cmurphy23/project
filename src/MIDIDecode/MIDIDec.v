`include "MIDIDecode.vh"

module MIDIDec(
	       input Clock,
	       input Reset,
	       input [7:0] message,
	       input [1:0] decodeType,
	       output messageValid,
	       output messageType,
	       output [9:0] delay,
	       output [7:0] velocity
	       );

   reg 			    valid;
   reg [7:0] 		    messageReg;
   reg 			    mType;
   reg [9:0] 		    freq;
   reg [7:0] 		    veloc;
   //reg 			    typeReg;
   //reg [9:0] 		    delayReg;
   //reg [7:0] 		    velocityReg;

   assign messageValid = valid;
   assign messageType = mType;
   assign delay = freq;
   assign velocity = veloc;


   
   always@(posedge Clock) begin
      if (Reset) begin
	 //typeReg <= 0;
	 //delayReg <= 0;
	 //velocityReg <= 0;
	 messageReg <= 8'b1111_1111;
      end
      else begin
	 //decodeReg <= decodeType;
	 //typeReg <= mType;
	 //delayReg <= freq;
	 //velocityReg <= veloc;
	 messageReg <= message;

      end // else: !if(Reset)
   end // always@ (posedge Clock)
    

   always@(*) begin
      if (Reset) begin
	 mType = 0;
	 freq = 0;
	 veloc = 0;
	 //messageReg = 0;
	 valid = 0;
      end
      
      valid = 1;
      case(decodeType)
	`MIDI_EVENT: begin
	   case(messageReg[7:4])
	     `MIDI_NOTE_OFF: mType = 0;
	     `MIDI_NOTE_ON: mType = 1;
	     default: valid = 0;
	   endcase // case (messageReg[7:4])
	end
	`MIDI_FREQ: begin
	   case(messageReg)
	     8'b0000_0000: freq = 583;
	     8'b0000_0001: freq = 550;
	     8'b0000_0010: freq = 519;
	     8'b0000_0011: freq = 490;
	     8'b0000_0100: freq = 462;
	     8'b0000_0101: freq = 436;
	     8'b0000_0110: freq = 412;
	     8'b0000_0111: freq = 389;
	     8'b0000_1000: freq = 367;
	     8'b0000_1001: freq = 346;
	     8'b0000_1010: freq = 327;
	     8'b0000_1011: freq = 309;
	     8'b0000_1100: freq = 291;
	     8'b0000_1101: freq = 275;
	     8'b0000_1110: freq = 259;
	     8'b0000_1111: freq = 245;
	     8'b0001_0000: freq = 231;
	     8'b0001_0001: freq = 218;
	     8'b0001_0010: freq = 206;
	     8'b0001_0011: freq = 194;
	     8'b0001_0100: freq = 183;
	     8'b0001_0101: freq = 173;
	     8'b0001_0110: freq = 163;
	     8'b0001_0111: freq = 154;
	     8'b0001_1000: freq = 146;
	     8'b0001_1001: freq = 137;
	     8'b0001_1010: freq = 130;
	     8'b0001_1011: freq = 122;
	     8'b0001_1100: freq = 116;
	     8'b0001_1101: freq = 109;
	     8'b0001_1110: freq = 103;
	     8'b0001_1111: freq = 97;
	     8'b0010_0000: freq = 92;
	     8'b0010_0001: freq = 87;
	     8'b0010_0010: freq = 82;
	     8'b0010_0011: freq = 77;
	     8'b0010_0100: freq = 73;
	     8'b0010_0101: freq = 69;
	     8'b0010_0110: freq = 65;
	     8'b0010_0111: freq = 61;
	     8'b0010_1000: freq = 58;
	     8'b0010_1001: freq = 55;
	     8'b0010_1010: freq = 51;
	     8'b0010_1011: freq = 49;
	     8'b0010_1100: freq = 46;
	     8'b0010_1101: freq = 43;
	     8'b0010_1110: freq = 41;
	     default: valid = 0;

	   endcase // case (messageReg)
	end // case: `MIDI_FREQ
	`MIDI_VEL: begin
	   if (messageReg[7] == 0)
	     veloc = messageReg;
	   else
	     valid = 0;
	end
	default: valid = 0;

      endcase // case (decodeType)
   end // always@ (*)

   endmodule
