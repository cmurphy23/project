module AudioBuffer(ready,received,ack,valid,dataIn,dataOut,full,reset,clk);
   
   input [17:0] dataIn;
   input 	reset;
   input 	ack;
   input 	ready;
   input 	clk;
   output 	received;
   output [17:0] dataOut;
   output 	 valid;
   output 	 full;

   reg [5:0]  count;
   reg 	      hasAck;
   reg 	      isReady;	      
   reg [5:0]  readPointer = 0;
   reg [5:0]  writePointer = 0;
   reg 	      syncResetD1;
   reg 	      syncReset; 
   reg 	      resetting = 0;
   reg 	      received = 0;
   wire [17:0]  currentData;
   reg [17:0]  prevData;  
   reg [17:0]  writeData;
   wire [17:0]  writeThrough;
   reg [5:0] 	a = 6'b000010;
   reg 		calc;
   
  


   wire [5:0] 	b;
   assign b = 5'b10000 - a;

   wire [23:0] 	result;
   assign result = ($signed(prevData)*$signed(b) + $signed(currentData)*$signed(a));
   
   
   
 		 
   

   reg 		 WrEn = 0;
 	 
   initial
     writeData <= dataIn;

   v_rams_11 RAM(.clk(clk),
		 .we(WrEn),
		 .a(writePointer),
		 .dpra(readPointer),
		 .di(writeData),
		 .spo(writeThrough),
		 .dpo(currentData));
   
   
	      
   
   wire [5:0] nextWrite;
   assign nextWrite = writePointer + 1;
   
   wire [5:0] nextRead;
   assign nextRead = readPointer + 1;
   

   integer 	i;


   assign valid = readPointer != writePointer;

   assign full = readPointer == nextWrite;

	  



   always @(posedge clk) begin
      syncResetD1 <= reset;
      syncReset <= syncResetD1;
   end
   

   always @(posedge clk) begin
      if (syncReset && !resetting) begin
	 resetting <= 1;
	 readPointer <= 0;
	 received <= 0;
      end
      else if (resetting) begin
	 if (readPointer == 63) begin
	    resetting <= 0;
	    WrEn <= 0;
	    writeData <= dataIn;
	 end
	 else begin
	    WrEn <= 1;
	    writeData <= {2'b00,16'h0000};
	    readPointer <= nextRead;
	 end // else: !if(readPointer == 1023)
      end // if (resetting)
      else begin
	 if (ack) begin
	    if (!hasAck)begin
	       if (nextRead != writePointer) begin
		  readPointer <= nextRead;
		  hasAck <= 1;
		  calc <= 0;		  
	       end
	    end
	 end
	 else if (!ack) begin
	    hasAck <= 0;
	    if (!calc) begin
	       prevData <=  result[21:4];
	       calc <= 1;
	    end
	 end	    
	 if (ready) begin
	    if (!isReady) begin
	       if (!full) begin
		  WrEn <= 1;
		  isReady <= 1;
		  received <= 1;
	       end
	    end
	    else begin
	       WrEn <= 0;
	       writePointer <= nextWrite;
	    end
	 end
	 else if (!ready) begin
	    isReady <= 0;
	    received <= 0;
	 end
	 writeData <= dataIn;
      end
   end
	    
	 
   assign dataOut = prevData;

      
  /* always @(reset,ack,ready) begin
      if (reset) begin
	    queue <= 0;
	 count <= 0;
      end
      else if (ack)
       if (count != 0) begin
	     queue <= {0,queue[1023:1]};
	  end
	  count <= count - 1;
      if (ready) begin
	 if (count != 1023) begin
	    queue <= {queue[1023:count],dataIn,queue[count-1:0]};
	   count <= count + 1;
	end
      end
   end*/


endmodule
