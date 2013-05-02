//
// Dual-Port RAM with Synchronous Read (Read Through)
//
module v_rams_11 (clk, we, a, dpra, di, spo, dpo);
   input clk;
   
   input we;
   
   input [5:0] a;
   
   input [5:0] dpra;
   
   input [17:0] di;
   
   output [17:0] spo;
   
   output [17:0] dpo;
   
   reg [17:0] 	 ram [63:0];
   
   reg [5:0] 	 read_a;
   
   reg [5:0] 	 read_dpra;
   
   always @(posedge clk) begin
      if (we)
	ram[a] <= di;
      read_a <= a;
      read_dpra <= dpra;
   end
   assign spo = ram[read_a];
   assign dpo = ram[read_dpra];

endmodule
