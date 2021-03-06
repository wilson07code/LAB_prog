module seq 
(input clk,rst,move,output [2:0]y);
logic [2:0]state,next;
parameter room_0=3'b000,
	  room_1=3'b001,
	room_2=3'b010,
	room_3=3'b011,
	room_4=3'b100,
	room_5=3'b101,
	room_6=3'b110,
	room_7=3'b111;
//seq_block

always@(posedge clk,posedge rst)
begin
if(rst)
state<=room_0;
else
state<=next;
end

//comb

always@(move,state)
begin
case(state)
room_0:if(move)
	next=room_1;
	else
	next=room_0;
room_1:if(move)
	next=room_4;
	else
	next=room_3;
room_2:if(move)
	next=room_4;
	else
	next=room_3;
room_3:if(move)
	next=room_0;
	else
	next=room_3;
room_4:if(move)
	next=room_5;
	else
	next=room_7;
room_5:if(move)
	next=room_6;
	else
	next=room_3;
room_6:if(move)
	next=room_6;
	else
	next=room_7;
room_7:if(move)
	next=room_5;
	else
	next=room_1;
default:next=room_0;
endcase
end

assign y=state;
endmodule
