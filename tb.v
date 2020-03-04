module tb;
reg clk;
reg btn1,btn0;
reg [2:0] sw20;
wire [6:0] seg0,seg1;

	top dut
	(
	.clk(clk),
	.btn1(btn1),
	.btn0(btn0),
	.sw20(sw20),
	.seg0(seg0),
	.seg1(seg1)
	);
initial begin
clk=0;
forever #2 clk=~clk;
end
initial begin
	btn1=1;
	#100 btn1=0;
	#100 btn1=1;
end
initial begin
	btn0=1;
	#300 btn0=0;
end
initial begin
	sw20=0;
	#300 sw20=5;
end
initial begin
	#10_000_000 $stop();
end
endmodule

	
