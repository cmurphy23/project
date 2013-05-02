`timescale 1ns/1ps

module UFIFOTestbench();
  // 1 / (100 MHz) = 10ns
  localparam ClockFreq = 100_000_000;
   localparam Baud = (100_000_000/115_200)*10;
   
  localparam Cycle = 10;
  
  reg  Clock, Reset;
  
   reg [7:0] DataInReg;
   
   wire [7:0] DataIn;
  reg  DataInValidReg;
   wire DataInValid;
  wire DataInReady;
   wire [7:0] DataOut;
   
  reg [7:0] DataOutReg;
  wire  DataOutValid;
   reg 	DataOutValidReg;
   
  reg  DataOutReadyReg;
   wire DataOutReady;
  wire FPGA_SERIAL_RX;
   reg FPGA_SERIAL_RX_Reg;
   
  wire FPGA_SERIAL_TX;
   wire [9:0] FIFO_Count;
   

  initial Clock = 1'b0;
  always #(5) Clock = ~Clock;
  
  //always #(5) begin
    // DataInReg <= DataIn;
     //DataInValidReg <= DataInValid;
     //DataOutReadyReg <= DataOutReady;
     
     
 // end
   

  initial begin
    // Reset
   // DataInValid = 1'b0;
   // DataOutReady = 1'b0;
    Reset = 1'b1;
    #(5*Cycle);
    Reset = 1'b0;
     //IDLE
     FPGA_SERIAL_RX_Reg = 1'b1;
     #(Cycle*2);
     //Pull down
     FPGA_SERIAL_RX_Reg = 1'b0;
     #(Baud);
     //message 8'b00100001
     FPGA_SERIAL_RX_Reg = 1'b0;
     #(Baud);
     FPGA_SERIAL_RX_Reg = 1'b0;
     #(Baud);
     FPGA_SERIAL_RX_Reg = 1'b1;
     #(Baud);
     FPGA_SERIAL_RX_Reg = 1'b0;
     #(Baud);
     FPGA_SERIAL_RX_Reg = 1'b0;
     #(Baud);
     FPGA_SERIAL_RX_Reg = 1'b0;
     #(Baud);
     FPGA_SERIAL_RX_Reg = 1'b0;
     #(Baud);
     FPGA_SERIAL_RX_Reg = 1'b1;
     
     //endmessage
     #(Baud);
     FPGA_SERIAL_RX_Reg = 1'b1;
     //Pull up, IDLE
     #(Cycle);
     
     
     
    // DataOutValidReg = 1'b1;

    // #(Cycle);
    // DataOutValidReg = 1'b0;
    // #(Cycle);
     

    // Wait until DataInReady, send a character
   // while (DataInReady == 1'b0) begin #(Cycle); end
   // DataIn = 8'h21;
   // DataInValid = 1'b1;
   // #(Cycle);
   // DataInValid = 1'b0;

    // Wait until it comes out the other side
    while(!DataOutReady) #(Cycle)
    if (DataOut !== 8'h21) begin
      // Wrong character came out
      //$display("Simulation Failed: Got output %d", DataOut);
     // $finish();
    end
    #(Cycle * 10);
    if (DataOut !== 8'h21) begin
      //$display("Simulation Failed: UART did not hold DataOut until DataOutReady");
     // $finish();
    end
    if (FPGA_SERIAL_TX !== 1'b1) begin
      //$display("Simulation Failed: UART TX idle signal was not high");
     // $finish();
    end
   // DataOutReady = 1'b1;
    #(Cycle);
    if (DataOutValid) begin
      //$display("Simulation Failed: UART did not clear Valid bit after Ready");
     // $finish();
    end

    $display("Test Successful, got output %d", 8'h21);
    $finish();
  end

  //--|UART|--------------------------------------------------------------------
  
  UART               #( .ClockFreq(       ClockFreq))
                     //   .BaudRate(        UARTBaudRate))
                  uart( .Clock(           Clock),
                        .Reset(           Reset),
                        .DataIn(          DataIn),
                        .DataInValid(     DataInValid),
                        .DataInReady(     DataInReady),
                        .DataOut(         DataOut),
                        .DataOutValid(    DataOutValid),
                        .DataOutReady(    DataOutReady),
                        .SIn(             FPGA_SERIAL_RX_Reg),
                        .SOut(            FPGA_SERIAL_TX));

  //--|FIFO|--------------------------------------------------------------------

   fifo_generator_v9_1 fifo_generator_v9_1(.clk(Clock),
			 .rst(Reset),
			 .din(DataOut),
			 .wr_en(DataOutValid),
			 .rd_en(DataInReady),
			 .dout(DataIn),
			 .full(FIFOFull),
			 .almost_full(FIFOAlmostFull),
			 .wr_ack(DataOutReady),
			 .overflow(FIFOOverflown),
			 .empty(FIFOEmpty),
			 .valid(DataInValid),
			 .data_count(FIFO_Count));
   

endmodule
