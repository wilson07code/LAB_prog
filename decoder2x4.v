module decoder2x4(output [3:0]x,input [1:0]b);
wire w1,w2;
not n1(w1,b[1]);
not n2(w2,b[0]);
and a1(x[0],w1,w2);
and a2(x[1],w1,b[0]);
and a3(x[2],b[1],w2);
and a4(x[3],b[1],b[0]);
endmodule