`timescale 10ns/1ns 
`include "full_adder_4bit.v"

module full_adder_4bit_tb;

reg [3:0]a,b;
reg c_in;
wire [3:0]sum;
wire c_out;

full_adder_4bit adder(.a(a),.b(b),.c_in(c_in),.sum(sum),.c_out(c_out));

initial begin
	$dumpfile ("full_adder_4bit.vcd");
	$dumpvars (0,full_adder_4bit_tb);
	a=4'b1001;b=4'b1000;c_in=1'b1;#1
	a=4'b1011;b=4'b1010;c_in=1'b0;#1
	a=4'b1000;b=4'b1100;c_in=1'b1;#1
	a=4'b1101;b=4'b1110;c_in=1'b0;#1
	
	$finish;
end

endmodule



