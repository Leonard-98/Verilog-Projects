module comp
	(
	input [29:0] a,b,
	output reg out
	);
	always@(*)
	begin
	if(a>b) out=1;
	else out=0;
	end
	endmodule
	