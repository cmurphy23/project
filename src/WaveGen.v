module WaveGen(clk,ready,received,dataOut,full,delay,reset,velocity,prepped,go,gain);
   input clk;
   input received;
   output ready;
   output [17:0] dataOut;
   input  full;
   input [9:0] delay;
   input       reset;
   input [7:0] velocity;
   output      prepped;
   input       go;
   input [10:0] gain;
   
   
   
   
   
   
   


   wire [17:0] dataOut;
   reg 	       ready = 0;
   reg [9:0]  count = 0;
   reg 	      WrEn;
   reg [9:0]	      readAddress = 0;
   wire [9:0] 	      nextRead;
   reg [9:0] 	      writeAddress = 0;
   wire [9:0] 	      nextWrite; 	   
   reg [17:0] 	      dataIn;	      
   wire [17:0] 	      writeThrough;
   reg 		      resetting = 0;
   reg [1:0] 	      done = 0;
   reg 		      syncReset;
   reg 		      syncResetD1;
   wire [28:0] 	      newData;
   wire [20:0] 	      shiftedData;
   reg [10:0] 	      constant;
   reg [5:0] 	      constant2 = 6'b011101;
   wire [16:0] 	      newConst;
   wire [10:0] 	      filterMul;
   reg 		      init = 1;
   reg 		      going;
   reg 		      prepped;
   reg [5:0] 	      count2 = 0;
   reg [7:0] 	      volume = 8'b01111111;
   wire [17:0] 	      dataOutInt1;
   wire [25:0] 	      dataOutInt2;
   
   
   
   
   
   


   
   
   
	     
   
   
   // reg [10:0] 	      filterMul;   // 1 sign bit, 8 fractional bits
	      


  /* always @(*)
     if (delay > 300)
       filterMul <= 11'b01111000000;
     else if (delay > 200)
       filterMul <= 11'b01111110000;
     else if (delay >150)
       filterMul <= 11'b01111111010;
     else if (delay >100)
       filterMul <= 11'b01111111001;
     else if (delay > 50)
       filterMul <= 11'b01111111110;
     else
       filterMul <= 11'b01111111110;*/
   
   
	   

   assign nextRead = readAddress + 1;

   assign nextWrite = nextRead + delay;

   assign newData = $signed(dataOut)*$signed(constant);

   assign shiftedData = newData[27:10];

   assign newConst = $signed(constant) * $signed(constant2);

   assign active = going;

   assign dataOutInt2 = $signed(dataOutInt1) * $signed(velocity);

   assign dataOut = dataOutInt2[24:7];
   


   v_rams_11_1024 RAM2(.clk(clk),
		       .we(WrEn),
		       .a(writeAddress),
		       .dpra(readAddress),
		       .di(dataIn),
		       .spo(writeThrough),
		       .dpo(dataOutInt1));

   
   



   always @(posedge clk) begin
      if (!going) begin
	 if (init) begin
	    writeAddress <= 1023;
	    resetting <= 1;
	    going <= 0;
	    WrEn <= 0;
	    ready <= 0;
	    prepped <= 0;
	    init <= 0;
	 end
	 if (reset && !resetting) begin
	    writeAddress <= 1023;
	    resetting <= 1;
	    going <= 0;
	    WrEn <= 0;
	    ready <= 0;
	    prepped <= 0;
	 end
	 else if (resetting) begin
	    if (done > 1) begin
	       WrEn <= 0;
	       resetting <= 0;
	       done <= 0;
	       count <= 0;
	       count2 <= 0;
	       readAddress <= 0;
	       writeAddress <= delay;
	       prepped <= 1;
	    end
	    else begin
	       WrEn <= 1;
	       ready <= 0;
	       
	       case(writeAddress[5:0])
		 
		 6'b000000: dataIn <= $signed(10'b0000000000)*$signed(volume);
		 
		 6'b000001: dataIn <= $signed(10'b0000110010)*$signed(volume);
		 
		 6'b000010: dataIn <= $signed(10'b0001100011)*$signed(volume);
		 
		 6'b000011: dataIn <= $signed(10'b0010010100)*$signed(volume);
		 
		 6'b000100: dataIn <= $signed(10'b0011000011)*$signed(volume);
		 
		 6'b000101: dataIn <= $signed(10'b0011110001)*$signed(volume);
		 
		 6'b000110: dataIn <= $signed(10'b0100011100)*$signed(volume);
		 
		 6'b000111: dataIn <= $signed(10'b0101000100)*$signed(volume);
		 
		 6'b001000: dataIn <= $signed(10'b0101101010)*$signed(volume);
		 
		 6'b001001: dataIn <= $signed(10'b0110001011)*$signed(volume);
		 
		 6'b001010: dataIn <= $signed(10'b0110101001)*$signed(volume);
		 
		 6'b001011: dataIn <= $signed(10'b0111000011)*$signed(volume);
		 
		 6'b001100: dataIn <= $signed(10'b0111011001)*$signed(volume);
		 
		 6'b001101: dataIn <= $signed(10'b0111101001)*$signed(volume);
		 
		 6'b001110: dataIn <= $signed(10'b0111111011)*$signed(volume);
		 
		 6'b001111: dataIn <= $signed(10'b0111111101)*$signed(volume);
		 
		 6'b010000: dataIn <= $signed(10'b0111111111)*$signed(volume);
		 
		 6'b010001: dataIn <= $signed(10'b0111111101)*$signed(volume);

		 6'b010010: dataIn <= $signed(10'b0111111011)*$signed(volume);

		 6'b010011: dataIn <= $signed(10'b0111101001)*$signed(volume);

		 6'b010100: dataIn <= $signed(10'b0111011001)*$signed(volume);

		 6'b010101: dataIn <= $signed(10'b0111000011)*$signed(volume);

		 6'b010110: dataIn <= $signed(10'b0110101001)*$signed(volume);

		 6'b010111: dataIn <= $signed(10'b0110001011)*$signed(volume);

		 6'b011000: dataIn <= $signed(10'b0101101010)*$signed(volume);

		 6'b011001: dataIn <= $signed(10'b0101000100)*$signed(volume);

		 6'b011010: dataIn <= $signed(10'b0100011100)*$signed(volume);

		 6'b011011: dataIn <= $signed(10'b0011110001)*$signed(volume);

		 6'b011100: dataIn <= $signed(10'b0011000011)*$signed(volume);

		 6'b011101: dataIn <= $signed(10'b0010010100)*$signed(volume);
	      
		 6'b011110: dataIn <= $signed(10'b0001100011)*$signed(volume);

		 6'b011111: dataIn <= $signed(10'b0000110010)*$signed(volume);
	       
		 6'b100000: dataIn <= $signed(10'b0000000000)*$signed(volume);

		 6'b100001: dataIn <= $signed(10'b1111001101)*$signed(volume);

		 6'b100010: dataIn <= $signed(10'b1110011100)*$signed(volume);

		 6'b100011: dataIn <= $signed(10'b1101101011)*$signed(volume);

		 6'b100100: dataIn <= $signed(10'b1100111100)*$signed(volume);

		 6'b100101: dataIn <= $signed(10'b1100001110)*$signed(volume);

		 6'b100110: dataIn <= $signed(10'b1011100011)*$signed(volume);

		 6'b100111: dataIn <= $signed(10'b1010111011)*$signed(volume);

		 6'b101000: dataIn <= $signed(10'b1010010101)*$signed(volume);
	       
		 6'b101001: dataIn <= $signed(10'b1001110100)*$signed(volume);

		 6'b101010: dataIn <= $signed(10'b1001010110)*$signed(volume);

		 6'b101011: dataIn <= $signed(10'b1000111100)*$signed(volume);

		 6'b101100: dataIn <= $signed(10'b1000100110)*$signed(volume);

		 6'b101101: dataIn <= $signed(10'b1000010110)*$signed(volume);
	       
		 6'b101110: dataIn <= $signed(10'b1000001001)*$signed(volume);
	       
		 6'b101111: dataIn <= $signed(10'b1000000010)*$signed(volume);

		 6'b110000: dataIn <= $signed(10'b1000000000)*$signed(volume);

		 6'b110001: dataIn <= $signed(10'b1000000010)*$signed(volume);

		 6'b110010: dataIn <= $signed(10'b1000001001)*$signed(volume);

		 6'b110011: dataIn <= $signed(10'b1000010110)*$signed(volume);

		 6'b110100: dataIn <= $signed(10'b1000100110)*$signed(volume);

		 6'b110101: dataIn <= $signed(10'b1000111100)*$signed(volume);

		 6'b110110: dataIn <= $signed(10'b1001010110)*$signed(volume);

		 6'b110111: dataIn <= $signed(10'b1001110100)*$signed(volume);

		 6'b111000: dataIn <= $signed(10'b1010010101)*$signed(volume);
	       
		 6'b111001: dataIn <= $signed(10'b1010111011)*$signed(volume);

		 6'b111010: dataIn <= $signed(10'b1011100011)*$signed(volume);

		 6'b111011: dataIn <= $signed(10'b1100001110)*$signed(volume);

		 6'b111100: dataIn <= $signed(10'b1100111100)*$signed(volume);

		 6'b111101: dataIn <= $signed(10'b1101101011)*$signed(volume);

		 6'b111110: dataIn <= $signed(10'b1110011100)*$signed(volume);

		 6'b111111: dataIn <= $signed(10'b1111001101)*$signed(volume);

	       endcase

	       
	       /*if (writeAddress[5:0]>31) begin
		dataIn <= {2'b11,16'h8000};
	    end
		else begin
		dataIn <= {2'b00, 16'h7FFF};
	    end */
	       if (writeAddress == 1023) begin
		  done <= done +1;
	       end
	       writeAddress <= writeAddress + 1;
	    end
	 end // if (resetting)
	 if (prepped && go) begin
	    going <= 1;
	    prepped <= 0;
	 end
      end // if (!going)
      else if (going) begin
	 if (!ready && !received) begin
	    readAddress <= nextRead;
	    ready <= 1;
	    WrEn <= 0;
	    count2 <= count2 + 1;
	    if (count == 1023) begin
	       constant <= newConst[16:6];
	       count <= 0;
	       if (count2 > 36) begin
		  resetting <= 1;
		  going <= 0;
		  writeAddress <= 1023;
		  WrEn <= 0;
		  prepped <= 0;
	       end
	    end
	    else begin
	       constant <= gain;
	    end
	 end
	 else if (ready && received) begin
	    writeAddress <= nextWrite;
	    WrEn <= 1;
	    dataIn <= shiftedData;
	    if (shiftedData[17]) begin
	       if (shiftedData[16:13] == 4'b1111) begin
		  if (count != 1023) begin 
		     count <= count + 1;
		  end
	       end
	       else begin
		  count <= 0;
	       end
	    end
	    else if (!shiftedData[17]) begin
	       if (shiftedData[16:13] == 4'b0000) begin
		  if (count != 1023) begin 
		     count <= count + 1;
		  end
	       end
	       else begin
		  count <= 0;
	       end
	    end
	    ready <= 0;
	 end
	 else
	   WrEn <= 0;
      end
   end
	 
	 
	   
	

/*if (!ready && !received) begin
	 if (count > 127)
	   dataOut <= {2'b10,16'h0000};
	 else
	   dataOut <= {2'b01, 16'hFFFF};
	 ready <= 1;
      end
      if (ready && received) begin
	 count <= count + 1;
	 ready <= 0;
      end
   end*/


endmodule
