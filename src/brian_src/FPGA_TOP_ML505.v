module FPGA_TOP_ML505(
  input   GPIO_SW_C,
  input   USER_CLK,

  input   FPGA_SERIAL_RX,
  output  FPGA_SERIAL_TX
);
  //--|Parameters|--------------------------------------------------------------

  parameter   ClockFreq     =             100000000;  // 100 MHz
  parameter   UARTBaudRate  =             115200;     // 115.2 KBaud

  //--|Wires|-------------------------------------------------------------------

  wire        Clock, Reset;
  wire  [7:0] DataIn;
  wire        DataInValid;
  wire        DataInReady;
  wire  [7:0] DataOut;
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
   
   
   
   
   
  
  //--|Clock & Reset|-----------------------------------------------------------

  BUFG        clockBuf( .I(               USER_CLK),
                        .O(               Clock));

  ButtonParse        #( .Width(           1),
                        .DebWidth(        20),
                        .EdgeOutWidth(    1)) 
            resetParse( .Clock(           Clock),
                        .Reset(           1'b0),
                        .Enable(          1'b1),
                        .In(              GPIO_SW_C),
                        .Out(             Reset));

  //--|UART|--------------------------------------------------------------------
  
  UART               #( .ClockFreq(       ClockFreq),
                        .BaudRate(        UARTBaudRate))
                  uart( .Clock(           Clock),
                        .Reset(           Reset),
                        .DataIn(          DataIn),
                        .DataInValid(     DataInValid),
                        .DataInReady(     DataInReady),
                        .DataOut(         DataOut),
                        .DataOutValid(    DataOutValid),
                        .DataOutReady(    DataOutReady),
                        .SIn(             FPGA_SERIAL_RX),
                        .SOut(            FPGA_SERIAL_TX));

  //--|FIFO|--------------------------------------------------------------------

   fifo_generator_v9_1 fifo_generator_v9_1(.clk(Clock),
			 .rst(Reset),
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

   //--|MIDI Decode DataPath|---------------------------------------------------

   MIDIDecodeDataPath MIDIDecodeDataPath(.Clock(Clock),
					 .Reset(Reset),
					 .message(DataIn),
					 .decodeType(decodeType),
					 .firstControl(firstByteControl),
					 .secondControl(secondByteControl),
					 .thirdControl(thirdByteControl),
					 .messageValid(MIDIValid),
					 .messageType(messageType),
					 .delay(delay),
					 .veloc(velocity));
   //--|MIDI Decode Control|----------------------------------------------------

   MIDIDecodeControl MIDIDecodeControl(.Clock(Clock),
				       .Reset(Reset),
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
   

  //--|Echo|--------------------------------------------------------------------

  reg       has_char;
  reg [7:0] char;

  always @(posedge Clock) begin
    if (Reset) has_char <= 1'b0;
    else has_char <= has_char ? !DataInReady : DataOutValid;
  end

  always @(posedge Clock)
    if (!has_char) char <= DataOut;

 // assign DataInValid = has_char;
 // assign DataIn = char;
 // assign DataOutReady = !has_char;

endmodule
