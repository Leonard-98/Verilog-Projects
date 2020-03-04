module rom
	(
	input [3:0] addr,
	output reg [3:0] data
	);
	always@(*)
	begin
	case(addr)
	0:data=0;
	1:data=1;
	2:data=1;
	3:data=2;
	4:data=1;
	5:data=2;
	6:data=2;
	7:data=3;
	8:data=1;
	9:data=2;
	10:data=2;
	11:data=3;
	12:data=2;
	13:data=3;
	14:data=3;
	15:data=4;
	endcase
	end
	endmodule 
	
	
	