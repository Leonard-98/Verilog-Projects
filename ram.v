module ram
	(
	input we,clk,
	input [2:0] addr,
	input [3:0] dataw,
	output reg [3:0] datar
	);
	reg [3:0] mem [0:7];
	always@(posedge clk)
	begin
	if(we==1) mem[addr]<=dataw;
	else datar<=mem[addr];
	end
	endmodule 
	