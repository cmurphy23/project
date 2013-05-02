module GainLUT (delay, filterMul);
   input [9:0] delay;
   output [10:0] filterMul;


   reg [10:0] 	 filterMul;
   


   always @(*)
     if (delay <= 51)
       filterMul <= 11'b01111111110;
     else if (delay <= 80)
       filterMul <= 11'b01111111101;
     else if (delay <= 134)
       filterMul <= 11'b01111111100;
     else if (delay <= 200)
       filterMul <= 11'b01111111011;
     else if (delay <= 238)
       filterMul <= 11'b01111111010;
     else if (delay <= 252)
       filterMul <= 11'b01111111001;
     else if (delay <= 268)
       filterMul <= 11'b01111111000;
     else if (delay <= 284)
       filterMul <= 11'b01111110111;
     else if (delay <= 300)
       filterMul <= 11'b01111110110;
     else if (delay <= 318)
       filterMul <= 11'b01111110101;
     else if (delay <= 356)
       filterMul <= 11'b01111110110;
     else if (delay <= 378)
       filterMul <= 11'b01111110101;
     else if (delay <= 400)
       filterMul <= 11'b01111110100;
     else if (delay <= 424)
       filterMul <= 11'b01111110011;
     else if (delay <= 449)
       filterMul <= 11'b01111110101;
     else if (delay <= 476)
       filterMul <= 11'b01111110010;
     else if (delay <= 505)
       filterMul <= 11'b01111110001;
     else if (delay <= 535)
       filterMul <= 11'b01111101100;
     else
       filterMul <= 11'b01111101100;
       
endmodule
