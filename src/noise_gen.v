module noise_gen (clk, noise);
   
   input clk;
   output [16:0] noise;
   
   reg [16:0] 		     noise = 16'b1111111111111111;
   reg 			     add;
   

   always @(posedge clk)
     begin
	if (add) begin
	   if (noise == 16'hFFFF) begin
	      add <= 0;
	   end
	   else begin
	      noise <= noise + 1;
	   end
	end
	else begin
	   if (noise == 0) begin
	      add <= 1;
	   end
	   else begin
	      noise <= noise - 1;
	   end
	end // else: !if(add)
    end
	      
	     

   

   

endmodule
