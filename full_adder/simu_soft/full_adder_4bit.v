`include "full_adder.v"

module full_adder_4bit(
input [3:0]a,b,
input c_in,
output [3:0]sum,
output c_out
);

wire c1,c2,c3;

full_adder add1(.a(a[0]),.b(b[0]),.c_out(c1),.sum(sum[0]),.c_in(c_in));
full_adder add2(.a(a[1]),.b(b[1]),.c_out(c2),.sum(sum[1]),.c_in(c1));
full_adder add3(.a(a[2]),.b(b[2]),.c_out(c3),.sum(sum[2]),.c_in(c2));
full_adder add4(.a(a[3]),.b(b[3]),.c_out(c_out),.sum(sum[3]),.c_in(c3));

endmodule
