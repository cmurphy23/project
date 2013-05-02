`timescale 1ns / 1ps

module testbench();

   parameter Halfcycle = 5; //half period is 5ns
   
   localparam Cycle = 2*Halfcycle;
   
   reg Clock;
   reg Clock2;
   reg Datain;
   wire audio_reset_b;
   wire ac97_sdata_out;
   wire ac97_synch;
   reg reset;
   wire [7:0] bit_count;
   wire [3:0] frame_count;
   wire [17:0] dataIn;
   wire [17:0] dataOut; 
   wire        audio_valid;
   wire       ack;
   wire       ready;
   wire       received;
   wire       full;
   reg [9:0]  delay = 110;
   
   


   Example example(Clock, audio_reset_b, ac97_sdata_out, Datain,
		   ac97_synch, Clock2,reset,bit_count,frame_count,dataOut,audio_valid,ack);

   AudioBuffer Abuf(.ready(ready),.received(received),.ack(ack),.valid(audio_valid),.dataIn(dataIn),.dataOut(dataOut),.full(full),.reset(reset),.clk(Clock));

   WaveGen Wgen(.clk(Clock),.ready(ready),.received(received),.dataOut(dataIn),.full(full),.delay(delay),.reset(reset));
   
   
   // Clock Signal generation:
   initial Clock = 0; 
   always #(Halfcycle) Clock = ~Clock;

   parameter Halfcycle2 = 41;

   localparam Cycle2 = 2*Halfcycle2;
   
   
   initial Clock2 = 0;
   always #(Halfcycle2) Clock2 = ~Clock2;
   


   initial begin
      #11;
      reset <= 1;
      #11;
      reset <= 0;
      #50000000;
      $finish();
   end
   
endmodule
