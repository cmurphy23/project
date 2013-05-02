module MIDIDecodeControl(
			 input Clock,
			 input Reset,
			 input FIFOFull,
			 input FIFOEmpty,
			 input DataValid,
			 input messageValid,
			 output read,
			 output[1:0] decodeType,
			 output firstByte,
			 output secondByte,
			 output thirdByte,
			 output waveReady
			 );

   localparam INITIAL = 5'b00000;
   localparam FIRSTBYTE = 5'b00001;
   localparam SECONDBYTE = 5'b00010;
   localparam THIRDBYTE = 5'b00100;
   //localparam FULL = 5'b01000;
   localparam INVALID = 5'b10000;
   

   reg [4:0] 			cs;
   reg [4:0] 			ns;
   reg 				read_en;
   reg [1:0] 			decode;
   reg 				fb;
   reg 				sb;
   reg 				tb;
   reg 				startGen;
   reg 				sendWave;
   
   
 
   assign read = read_en;
   assign decodeType = decode;
   assign firstByte = fb;
   assign secondByte = sb;
   assign thirdByte = tb;
   assign waveReady = sendWave;
   

   /*
   always@(posedge Clock) begin
      
      if (Reset) begin
	 cs <= INITIAL;
   
      else
	cs <= ns;
       
      
   end
   */
   always@(posedge Clock) begin
      if (Reset) begin
	 cs <= INITIAL;
         sendWave <= 0;
      end
      else begin
	 cs <= ns;
	 sendWave <= startGen;
      end
      
   end
   

   always@(*) begin
      case(cs)
	INITIAL: begin
	   //if (tb && !startGen) startGen = 1;
	   //else startGen = 0;
	   decode = 2'b11;
	   read_en = 1'b0;
	   startGen = 0;
	   fb = 0;
	   sb = 0;
	   tb = 0;
	   if (DataValid && !read_en) begin
	      read_en = 1;
	      ns = FIRSTBYTE;
	   end
	   else begin
	      if (FIFOEmpty || !DataValid)
		ns = INITIAL;
              else if (!messageValid)
		ns = INVALID;
           end
	end
	FIRSTBYTE: begin
	   //if (tb && !startGen) startGen = 1;
	   //else startGen = 0;
	   startGen = 0;
	   tb = 0;
	   fb = 0;
	   sb = 0;
	   decode = 2'b00;
	   if (!DataValid || FIFOEmpty) ns = INITIAL;
	   else begin
	      if (messageValid) begin
		 fb = 1;
		 
		 ns = SECONDBYTE;
		 
	      end
	      else ns = INVALID;
	      
	   end
	   
	end
	SECONDBYTE: begin
	   decode = 2'b01;
	   fb = 0;
	   sb = 0;
	   tb = 0;
	   if (!DataValid || FIFOEmpty) ns = INITIAL;
	   else begin
	      if (messageValid) begin
		 sb = 1;
		 
		 ns = THIRDBYTE;
	      end
	      else ns = INVALID;
	   end
   
	end
	THIRDBYTE: begin
	   decode = 2'b10;
	   tb = 0;
	   sb = 0;
	   fb = 0;
	   if ((!DataValid || FIFOEmpty) && !messageValid) ns = INITIAL;
           else begin
	      if (messageValid) begin
		 tb = 1;
		 startGen = 1;
		 ns = FIRSTBYTE;
	      end
	      else ns = INVALID;
	      
	   end
   
	end
	/*
	FULL: begin
	   decode = 2'b11;
	   sb = 0;
	   tb = 0;
	   read_en = 0;
	   startGen = 1;
	   if (FIFOEmpty)ns = INITIAL;
           else begin
	      read_en = 1;
	      ns = FIRSTBYTE;
	      
	   end
 
	end
	*/
	INVALID: begin
	   decode = 2'b00;
	   fb = 0;
	   sb = 0;
	   tb = 0;
	   if (FIFOEmpty || !DataValid) ns = INITIAL;
           else begin
	      if (messageValid) begin
		 fb = 1;
		 ns = SECONDBYTE;
		 
	      end
	      else ns = INVALID;
	      
	   end
 
	end

        default: ns = INITIAL;
   
      endcase // case (cs)
   end // always@ (*)
   
	   




   endmodule
