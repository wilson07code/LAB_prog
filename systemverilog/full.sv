module fa
(input a,b,cin,output sum,cout);
wire w1,w2,w3;
ha h1(.a,.b,.sum(w1),.cout(w2));
ha h2(.a(w1),.b(cin),.sum,.cout(w3));
ha h3(.a(w3),.b(w2),.sum(cout));
endmodule