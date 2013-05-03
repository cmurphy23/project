module Decoder (clk,rst,message,read,dataValid,delay,velocity,noteOn);

   input clk;
   input rst;
   input [7:0] message;
   output      read;
   input       dataValid;
   output [9:0] delay;
   output [7:0] velocity;
   output 	noteOn;
   


   reg 		read = 1;
   reg [9:0] 	freq;
   reg [7:0] 	velocity;
   reg 		noteOn = 0;
   reg 		messageValid;

   reg [2:0] 	state = 0;
   reg [2:0] 	next;
   


   assign delay = freq;
   
   
   always @(posedge clk) begin
      case(state)

	 3'b000: begin
	    if (dataValid) begin
	       if (message[7:4] == 4'b1001) begin
		  state <= 3'b111;
		  next <= 3'b001;
	       end
	    end
	 end

	3'b001: begin
	   if (dataValid) begin
	      if (!message[7]) begin
		 case(message)
		    8'b0010_1000: freq = 583;
		    8'b0010_1001: freq = 550;
		    8'b0010_1010: freq = 519;
		    8'b0010_1011: freq = 490;
		    8'b0010_1100: freq = 462;
		    8'b0010_1101: freq = 436;
		    8'b0010_1110: freq = 412;
		    8'b0010_1111: freq = 389;
		    8'b0011_0000: freq = 367;
		    8'b0011_0001: freq = 346;
		    8'b0011_0010: freq = 327;
		    8'b0011_0011: freq = 309;
		    8'b0011_0100: freq = 291;
		    8'b0011_0101: freq = 275;
		    8'b0011_0110: freq = 259;
		    8'b0011_0111: freq = 245;
		    8'b0011_1000: freq = 231;
		    8'b0011_1001: freq = 218;
		    8'b0011_1010: freq = 206;
		    8'b0011_1011: freq = 194;
		    8'b0011_1100: freq = 183;
		    8'b0011_1101: freq = 173;
		    8'b0011_1110: freq = 163;
		    8'b0011_1111: freq = 154;
		    8'b0100_0000: freq = 146;
		    8'b0100_0001: freq = 137;
		    8'b0100_0010: freq = 130;
		    8'b0100_0011: freq = 122;
		    8'b0100_0100: freq = 116;
		    8'b0100_0101: freq = 109;
		    8'b0100_0110: freq = 103;
		    8'b0100_0111: freq = 97;
		    8'b0100_1000: freq = 92;
		    8'b0100_1001: freq = 87;
		    8'b0100_1010: freq = 82;
		    8'b0100_1011: freq = 77;
		    8'b0100_1100: freq = 73;
		    8'b0100_1101: freq = 69;
		    8'b0100_1110: freq = 65;
		    8'b0100_1111: freq = 61;
		    8'b0101_0000: freq = 58;
		    8'b0101_0001: freq = 55;
		    8'b0101_0010: freq = 51;
		    8'b0101_0011: freq = 49;
		    8'b0101_0100: freq = 46;
		    8'b0101_0101: freq = 43;
		    8'b0101_0110: freq = 41;
		    default: freq = 0;
		 endcase // case (message)
		 state <= 3'b111;
		 next <= 3'b010;
	      end // if (!message[7])
	      else if (message[7]) begin
		 next <= 3'b000;
		 state <= 3'b111;
	      end
	   end // if (dataValid)
	end

	3'b010: begin
	   if (dataValid) begin
	      if (!message[7]) begin
		 velocity <= message;
		 noteOn <= 1;
		 state <= 3'b011;
		 read <= 0;
	      end
	      else if (message[7]) begin
		 state <= 3'b111;
		 next <= 3'b000;
	      end
	   end
	end // case: 2b'10

	3'b011: begin
	   noteOn <= 0;
	   state <= 3'b000;
	   read <= 1;
	end

	3'b111: begin
	   state <= next;
	end
	   
      endcase // case (state)
   end


endmodule

	
	       
