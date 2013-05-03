 `timescale 1ns / 1ps

module Example (clock, audio_reset_b, ac97_sdata_out, ac97_sdata_in,
		      ac97_synch, ac97_bit_clock, reset, bit_count, frame_count,audio_in,audio_valid,ack);

   input clock;
   output audio_reset_b;
   output ac97_sdata_out;
   input ac97_sdata_in;
   output ac97_synch;
   input ac97_bit_clock;
   input reset;
   output [7:0] bit_count;
   output [3:0] frame_count;
   input [17:0] audio_in;
   input 	audio_valid;
   output 	ack;   
   
   

   reg audio_reset_b;
   reg ac97_sdata_out;
   reg ac97_synch;
   reg ack;
   reg hasAck;
   

   reg [19:0] audio_left;
   reg [19:0] audio_right;
   
   reg [7:0] bit_count;
   reg [3:0] frame_count;
   reg [4:0] count = 0;
   
   
   reg [23:0] command;
   wire [19:0] command_data;
   wire [19:0] command_address;

   reg [7:0] reset_count;   

   initial begin
      reset_count = 0;
      // synthesis attribute init of reset_count is "00";
      audio_reset_b = 1;
      #2000;
      audio_reset_b = 0;
      #2000;
      audio_reset_b = 1;      
      // synthesis attribute init of audio_reset_b is "0";
   end

   always @(*)
     audio_reset_b <= ~reset;
   
   
   /*always @(posedge clock)
     if (reset_count == 255)
       audio_reset_b <= 0;
     else
       reset_count = reset_count+1; */
   
   initial begin
      bit_count = 8'hff;
      // synthesis attribute init of bit_count is "00";
      frame_count = 4'hf;
      // synthesis attribute init of frame_count is "0";
   end
   
   always @(posedge ac97_bit_clock or posedge reset) begin
      if (reset) begin
	 frame_count <= 0;
	 bit_count <= 255;
	 count <= 0;
      end
      else begin
	 // Generate the sync signal
	 if (bit_count == 255 || bit_count < 15)begin
	    ac97_synch <= 1'b1;
	 end
	 if (bit_count >= 15 && bit_count <= 254) begin
	    ac97_synch <= 1'b0;
	 end
	 
	 if ((bit_count >= 0) && (bit_count < 16))
	   // Slot 0: Tags
	   case (bit_count[3:0])
	     4'h0: ac97_sdata_out <= 1; // Frame valid
	     4'h1: ac97_sdata_out <= 1; // Command address valid
	     4'h2: ac97_sdata_out <= 1; // Command data valid
	     4'h3: ac97_sdata_out <= 1; // Left channel valid
	     4'h4: ac97_sdata_out <= 1; // Right channel valid
	     default: ac97_sdata_out <= 1'b0;
	   endcase
	 
	 else if ((bit_count >= 16) && (bit_count <= 35))
	   // Slot 1: Command address
	   ac97_sdata_out <= command_address[35-bit_count];
	 
	 else if ((bit_count >= 36) && (bit_count <= 55))
	   // Slot 2: Command data
	   ac97_sdata_out <= command_data[55-bit_count];
	 else if ((bit_count >= 56) && (bit_count <= 75))
	   // Slot 3: Left Audio data
	   ac97_sdata_out <= audio_left[75-bit_count];
	 else if ((bit_count >= 76) && (bit_count <= 95))
	   // Slot 4: Right Audio data
	   ac97_sdata_out <= audio_right[95-bit_count];



	   /*if (count > 15) begin
	      if (bit_count == 56 || bit_count == 76)
		ac97_sdata_out <= 1'b0; // 4 frames with value 2^18-1
	      else
		ac97_sdata_out <=1'b1;
	   end
      	   else begin
	      if (bit_count == 56 || bit_count == 76)
		ac97_sdata_out <= 1'b1; // 4 frames with value -2^18
	      else
		ac97_sdata_out <= 1'b0;
	   end*/
	 if (bit_count == 255) begin
	    frame_count <= frame_count+1;
	    count <=  count + 1;
	 end
	 bit_count <= bit_count+1;
      end // else: !if(reset)  
   end // always @ (posedge ac97_bit_clock)

   always @(posedge clock) begin
      if (bit_count == 255 && !hasAck) begin
	 audio_left <= {audio_in,2'b00};
	 audio_right <= {audio_in,2'b00};
	 ack <= 1;
	 hasAck <= 1;
      end
      else if (bit_count != 255) begin
	 hasAck <= 0;
	 ack <= 0;
      end
      else
	ack <= 0;
   end
	 

   always @(frame_count) begin
      case (frame_count)
	4'h1: command = 24'h02_0303; // Unmute line outputs
	4'h2: command = 24'h04_0707; // Unmute headphones
	4'h3: command = 24'h18_0000;
	4'h4: command = 24'h20_8000;
	4'h5: command = 24'h0C_8000;
	4'h6: command = 24'h0A_8000;
	4'h7: command = 24'h10_0808; // Unmute line inputs
	default: command = 24'hFC_0000; // Read vendor ID

      endcase // case (frame_count)
   end
      

   // Separate the address and data portions of the command
   // and pad them to 20 bits
   assign command_address = {command[23:16], 12'h000};
   assign command_data = {command[15:0], 4'h0};


   
   
endmodule
