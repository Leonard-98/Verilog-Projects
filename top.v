module top
	(
	input clk,
	input  btn1,btn0,
	input [2:0] sw20,
	output [6:0] seg0,seg1
	);
	wire w0,w3;
	wire [29:0] w1;
	wire [3:0] w2,w4,w5;
	counter30b cont3
	(
	.clk(clk),
	.en(1),
	.rst(w0),
	.val(w1)
	);
	comp comparator
	(
	.b(w1),
	.a(500_000),
	.out(w0)
	);
	counter4b cont4
	(
	.clk(clk),
	.en(~w0),
	.rst(btn1),
	.val(w2)
	);
	muxx muxxxx
	(
	.a(0),
	.b(~w0),
	.sel(btn0),
	.out(w3)
	);
	ram ramm
	(
	.clk(clk),
	.we(w3),
	.addr(sw20),
	.dataw(w2),
	.datar(w4)
	);
	rom romm
	(
	.addr(w2),
	.data(w5)
	);
	transcodor trans1
	(
	.in(w5),
	.out(seg0)
	);
	transcodor trans2
	(
	.in(w4),
	.out(seg1)
	);
	endmodule 
	
	
	