module ml505top (
		 input  [7:0] GPIO_DIP,
		 input        GPIO_COMPSW_C,
		 input        GPIO_COMPSW_E,
		 input        GPIO_COMPSW_N,
		 input        GPIO_COMPSW_S,
		 input        GPIO_COMPSW_W,
		 input        USER_CLK,
		 input AUDIO_SDATA_IN,
		 input AUDIO_BIT_CLK,
		 input MIDI_IN,

		 output AUDIO_SDATA_OUT,
		 output AUDIO_SYNC,
		 output FLASH_AUDIO_RESET_B,
		 output [7:0] GPIO_LED,
		 output       GPIO_COMPLED_C
);


   // Parameters
   parameter   ClockFreq     =             100000000;  // 100 MHz
   parameter   UARTBaudRate  =             94340;     // 31.25 KBaud????
   //--------------
   

   
   reg [7:0] 		      LED;
   
   
   // Clock and reset:
   wire 		      clk;
   BUFG clock_buf(.I(USER_CLK), .O(clk));

    // Use the center compass switch to reset/trigger chipscope:
   wire 		      rst;
   Debouncer rst_parse(
			.clk(clk),
			.in(GPIO_COMPSW_C),
			.out(rst));

   wire  west;
   Debouncer west_parse(
		       .clk(clk),
		       .in(GPIO_COMPSW_W),
		       .out(west));

   wire  north;
   Debouncer north_parse(
		       .clk(clk),
		       .in(GPIO_COMPSW_N),
		       .out(north));

   wire  south;
   Debouncer south_parse(
		       .clk(clk),
		       .in(GPIO_COMPSW_S),
		       .out(south));

   wire  east;
   Debouncer east_parse(
		       .clk(clk),
		       .in(GPIO_COMPSW_E),
		       .out(east));

   

   wire [35:0] chipscope_control;
   wire [39:0]  data;
   wire [7:0]  bit_count;
   wire [3:0]  frame_count;

   wire        ack;
   wire        ready;
   wire        full;
   wire        valid;
   wire  [17:0]      dataIn;
   wire  [17:0]      dataOut;
   wire        received;
  // reg [7:0] 	       volume = 8'b01111111;
  // reg [10:0] 	       filterMul = 11'b01111111111;

   reg 		       north2;
   reg 		       east2;
   reg 		       west2;
   reg 		       south2;
   reg 		       newN;
   reg 		       newS;
   reg 		       newE;
   reg 		       newW;
   wire 	       prepped;
   reg 		       go;


   wire  [7:0] DataIn;
   wire        DataInValid;
   wire        DataInReady;
   wire [7:0]  DataOut;
   wire        DataOutValid;
   wire        DataOutReady;
   wire       FIFOFull;
   wire       FIFOAlmostFull;
   wire       FIFOOverflown;
   wire       FIFOEmpty;
   wire [9:0]  FIFOCount;
   wire        FIFORead;
   
   wire        MIDIValid;
   wire [1:0]  decodeType;
   wire        firstByteControl;
   wire        secondByteControl;
   wire        thirdByteControl;
   wire        messageType;
   wire [9:0]  delay;
   wire [7:0]  velocity;
   wire        startWaveGen;


   
   
   
   


   always @(*) begin
      newN <= (north && !north2);
      newS <= (south && !south2);
      newE <= (east && !east2);
      newW <= (west && !west2);
   end
   
   
   /*always  @(posedge clk) begin
      if (newN) begin
	 delay <= 109;
	 noteOn <= 1;
      end
      else if (newS) begin
	 delay <= 218;
	 noteOn <= 1;
      end
      else if (newE) begin
	 delay <= 55;
	 noteOn <= 1;
      end
      else if (newW) begin
	 delay <= 80;
	 noteOn <= 1;
      end
      else
	noteOn <= 0;
      north2 <= north;
      south2 <= south;
      east2 <= east;
      west2 <= west;
	 
   end*/

   

   /*always @(posedge north or posedge south)
     if (north)
       delay <= delay + 1;
     else if (south)
       delay <= delay - 1;

   always @(posedge east or posedge west)
     if (west)
       filterMul <= filterMul + 1;
     else if (east)
       filterMul <= filterMul - 11'b00000000001;
     else
       filterMul <= filterMul;*/
   
   
   

   assign data = {delay,velocity,startWaveGen,DataIn,DataOut,DataOutValid,MIDI_IN,FIFORead,DataInValid,firstByteControl,secondByteControl,thirdByteControl};
   
   
   chipscope_icon icon(
		       .CONTROL0(chipscope_control)
		       );
   // synthesis syn_noprune=1 ;


		      
   chipscope_ila ila(
		     .CONTROL(chipscope_control),
		     .CLK(clk),
		     .DATA(data),
		     .TRIG0(DataInValid) 
		     );
   // synthesis syn_noprune=1 ; 


   Example codec_com(.clock(clk),
		     .audio_reset_b(FLASH_AUDIO_RESET_B),
		     .ac97_sdata_out(AUDIO_SDATA_OUT),
		     .ac97_sdata_in(AUDIO_SDATA_IN),
		     .ac97_synch(AUDIO_SYNC),
		     .ac97_bit_clock(AUDIO_BIT_CLK),
		     .reset(rst),
		     .bit_count(bit_count),
		     .frame_count(frame_count),
		     .audio_in(dataOut),
		     .audio_valid(valid),
		     .ack(ack));

   AudioBuffer Abuf(.ready(ready),
		    .received(received),
		    .ack(ack),
		    .valid(valid),
		    .dataIn(dataIn),
		    .dataOut(dataOut),
		    .full(full),
		    .reset(rst),
		    .clk(clk));
   

   /*WaveGen Wgen(.clk(clk),.ready(ready),.received(received),.dataOut(dataIn),
		.full(full), .delay(delay), .reset(reset), .volume(volume),
		.prepped(prepped), .go(go));*/
   
   


   WaveGenController Wgen(.clk(clk),
			  .ready(ready),
			  .received(received),
			  .dataOut(dataIn),
			  .delay(delay),
			  .reset(rst),
			  .velocity(velocity),
			  .noteOn(startWaveGen));


    UART               #( .ClockFreq(       ClockFreq),
                        .BaudRate(        UARTBaudRate))
                  uart( .Clock(           clk),
                        .Reset(           rst),
                        .DataIn(          DataIn),
                        .DataInValid(     DataInValid),
                        .DataInReady(     DataInReady),
                        .DataOut(         DataOut),
                        .DataOutValid(    DataOutValid),
                        .DataOutReady(    DataOutReady),
                        .SIn(             MIDI_IN),
                        .SOut(            FPGA_SERIAL_TX));

    fifo_generator_v9_1 fifo_generator_v9_1(.clk(clk),
			 .rst(rst),
			 .din(DataOut),
			 .wr_en(DataOutValid),
			 .rd_en(FIFORead),
			 .dout(DataIn),
			 .full(FIFOFull),
			 .almost_full(FIFOAlmostFull),
			 .wr_ack(DataOutReady),
			 .overflow(FIFOOverflown),
			 .empty(FIFOEmpty),
			 .valid(DataInValid),
			 .data_count(FIFOCount));

   MIDIDecodeDataPath MIDIDecodeDataPath(.Clock(clk),
					 .Reset(rst),
					 .message(DataIn),
					 .decodeType(decodeType),
					 .firstControl(firstByteControl),
					 .secondControl(secondByteControl),
					 .thirdControl(thirdByteControl),
					 .messageValid(MIDIValid),
					 .messageType(messageType),
					 .delay(delay),
					 .veloc(velocity));

   MIDIDecodeControl MIDIDecodeControl(.Clock(clk),
				       .Reset(rst),
				       .FIFOFull(FIFOFull),
				       .FIFOEmpty(FIFOEmpty),
				       .DataValid(DataInValid),
				       .messageValid(MIDIValid),
				       .read(FIFORead),
				       .decodeType(decodeType),
				       .firstByte(firstByteControl),
				       .secondByte(secondByteControl),
				       .thirdByte(thirdByteControl),
				       .waveReady(startWaveGen));
   
   
   
   

   // to test rst
   reg 	       GPIO_COMPLED = 0;
   
   /*always @(posedge rst)
     if (GPIO_COMPLED)
       GPIO_COMPLED <= 0;
     else
       GPIO_COMPLED <= 1;*/

   assign GPIO_COMPLED_C = MIDI_IN;

   

   always @(*) begin
      if (rst) begin
	 LED <= 8'hFF;
      end
      else if (!MIDI_IN)
	LED <= 8'h00;
   end
   


   assign GPIO_LED = LED;
   

endmodule
   
