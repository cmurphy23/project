module WaveGenController (clk,ready,received,dataOut,delay,reset,velocity,noteOn,source);
   input clk;
   input received;
   output ready;
   output [17:0] dataOut;
   input [9:0] 	 delay;
   input 	 reset;
   input [7:0] 	 velocity;
   input 	 noteOn;
   input 	 source;
   
   
   




   wire [10:0] 	 gain;
   
 
   
   wire 	 ready1;
   wire		 ready2;
   wire		 ready3;
   wire		 ready4;
   wire		 ready5;
   wire		 ready6;
   wire		 ready7;
   wire		 ready8;

   wire	[17:0]	 dataOut1;
   wire	[17:0]	 dataOut2;
   wire	[17:0]	 dataOut3;
   wire	[17:0]	 dataOut4;
   wire [17:0]	 dataOut5;
   wire	[17:0]	 dataOut6;
   wire	[17:0]	 dataOut7;
   wire	[17:0]	 dataOut8;

   wire [7:0] 	 datas = {dataOut1, dataOut2, dataOut3, dataOut4,dataOut5, dataOut6, dataOut7, dataOut8};


   reg [17:0] 	 data1;
   reg [17:0] 	 data2;
   reg [17:0] 	 data3;
   reg [17:0] 	 data4;
   reg [17:0] 	 data5;
   reg [17:0] 	 data6;
   reg [17:0] 	 data7;
   reg [17:0] 	 data8;	     
   

   wire		 prepped1;
   wire		 prepped2;
   wire		 prepped3;
   wire		 prepped4;
   wire		 prepped5;
   wire		 prepped6;
   wire 	 prepped7;
   wire		 prepped8;
   
   wire [7:0] 	 prep;
   
   assign prep = {prepped1, prepped2, prepped3, prepped4, prepped5, prepped6, prepped7, prepped8};
   

   reg 		 go1;
   reg 		 go2;
   reg 		 go3;
   reg 		 go4;
   reg 		 go5;
   reg 		 go6;
   reg 		 go7;
   reg 		 go8;

   reg 		 active1;
   reg 		 active2;
   reg 		 active3;
   reg 		 active4;
   reg 		 active5;
   reg 		 active6;
   reg 		 active7;
   reg 		 active8;

   integer 	 i;
   
   
   GainLUT glut(.delay(delay),.filterMul(gain));

   WaveGen gen1(.clk(clk),.ready(ready1),.received(received),.dataOut(dataOut1),.delay(delay),.velocity(velocity),.prepped(prepped1),.go(go1),.gain(gain),.source(source));

   WaveGen gen2(.clk(clk),.ready(ready2),.received(received),.dataOut(dataOut2),.delay(delay),.velocity(velocity),.prepped(prepped2),.go(go2),.gain(gain),.source(source));

   WaveGen gen3(.clk(clk),.ready(ready3),.received(received),.dataOut(dataOut3),.delay(delay),.velocity(velocity),.prepped(prepped3),.go(go3),.gain(gain),.source(source));

   WaveGen gen4(.clk(clk),.ready(ready4),.received(received),.dataOut(dataOut4),.delay(delay),.velocity(velocity),.prepped(prepped4),.go(go4),.gain(gain),.source(source));

   WaveGen gen5(.clk(clk),.ready(ready5),.received(received),.dataOut(dataOut5),.delay(delay),.velocity(velocity),.prepped(prepped5),.go(go5),.gain(gain),.source(source));

   WaveGen gen6(.clk(clk),.ready(ready6),.received(received),.dataOut(dataOut6),.delay(delay),.velocity(velocity),.prepped(prepped6),.go(go6),.gain(gain),.source(source));

   WaveGen gen7(.clk(clk),.ready(ready7),.received(received),.dataOut(dataOut7),.delay(delay),.velocity(velocity),.prepped(prepped7),.go(go7),.gain(gain),.source(source));

   WaveGen gen8(.clk(clk),.ready(ready8),.received(received),.dataOut(dataOut8),.delay(delay),.velocity(velocity),.prepped(prepped8),.go(go8),.gain(gain),.source(source));



   //controller is ready when all the active generators are ready
   assign ready = ready1 || ready2 || ready3 || ready4 || ready5 || ready6 || ready7 || ready8;
   


   //controller's data is the sum of active generators' data
   assign dataOut = data1 + data2 + data3 + data4 + data5 + data6 + data7 + data8;
   
   always @(*) begin
     if (ready1) begin
       data1 <= dataOut1;
     end
     else begin
       data1 <= 0;
     end
   end

   always @(*) begin
     if (ready2) begin
       data2 <= dataOut2;
     end
     else begin
       data2 <= 0;
     end
   end

   always @(*) begin
     if (ready3) begin
       data3 <= dataOut3;
     end
     else begin
       data3 <= 0;
     end
   end
      
   always @(*) begin
     if (ready4) begin
       data4 <= dataOut4;
     end
     else begin
       data4 <= 0;
     end
   end

   always @(*) begin
     if (ready5) begin
       data5 <= dataOut5;
     end
     else begin
       data5 <= 0;
     end
   end
	
   always @(*) begin
     if (ready6) begin
       data6 <= dataOut6;
     end
     else begin
       data6 <= 0;
     end
   end


   always @(*) begin
     if (ready7) begin
       data7 <= dataOut7;
     end
     else begin
       data7 <= 0;
     end
   end

   always @(*) begin
     if (ready8) begin
       data8 <= dataOut8;
     end
     else begin
       data8 <= 0;
     end
   end
   

   always @(posedge clk) begin
      if (noteOn) begin
	 if (prepped1)
	   go1 <= 1;
	 else if (prepped2)
	   go2 <= 1;
	 else if (prepped3)
	   go3 <= 1;
	 else if (prepped4)
	   go4 <= 1;
	 else if (prepped5)
	   go5 <= 1;
	 else if (prepped6)
	   go6 <= 1;
	 else if (prepped7)
	   go7 <= 1;
	 else if (prepped8)
	   go8 <= 1;
      end // if (noteOn)
      else begin
	 go1 <= 0;
	 go2 <= 0;
	 go3 <= 0;
	 go4 <= 0;
	 go5 <= 0;
	 go6 <= 0;
	 go7 <= 0;
	 go8 <= 0;
      end // else: !if(noteOn)
     
      
   end
	 
   
   
endmodule
