module FIFODatapath(
	    input clk,
	    input rst,
	    input [255:0] DataIn,
	    input write,
	    input read,

	    output Empty,
	    output Half,
	    output Full,
	    output [255:0] DataOut
	    );
   
endmodule
