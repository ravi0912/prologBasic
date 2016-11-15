%Declaring Item


piz(hawaiian).
piz(super_supreme).
piz(marco_polo).
piz(pepperini).
piz(ninja).


top1(mutton).
top1(chicken).
top1(prawn).
top1(salami).
top1(tuna).

top2(onion).
top2(corn).
top2(olive).
top2(tomato).
top2(pineapple).

price(55).
price(65).
price(70).
price(85).
price(100).

%Declaring Menu 
menu:-P1=hawaiian,P2=marco_polo,P3=pepperini,P4=super_supreme,P5=ninja,
	  top1(T11),top1(T12),top1(T13),top1(T14),top1(T15),
	  T11 \= T12,T11 \= T13,T11 \= T14,T11 \= T15,T12 \= T13,T12 \= T14,T12 \= T15,T13 \= T14,T13 \= T15,T14 \= T15,
	  top2(T21),top2(T22),top2(T23),top2(T24),top2(T25),
	  T21 \= T22,T21 \= T23,T21 \= T24,T21 \= T25,T22 \= T23,T22 \= T24,T22 \= T25,T23 \= T24,T23 \= T25,T24 \= T25,
	  piz(P1),piz(P2),piz(P3),piz(P4),piz(P5),
	  price(C1),price(C2),price(C3),price(C4),price(C5),
	  P1 \= P2,P1 \= P3,P1 \= P4,P1 \= P5,P2 \= P3,P2 \= P4,P2 \= P5,P3 \= P4,P3 \= P5,P4 \= P5,
	  C1 \= C2,C1 \= C3,C1 \= C4,C1 \= C5,C2 \= C3,C2 \= C4,C2 \= C5,C3 \= C4,C3 \= C5,C4 \= C5,

	  (
	  (C1=55
	  		->(T11 \= salami,T21 = olive)
	  		;
	  		(_ is 1+1)
	  ),
	  (C2=55
	  		->(T12 \= salami,T22 = olive)
	  		;
	  		(_ is 1+1)
	  ),
	  (C3=55
	  		->(T13 \= salami,T23 = olive)
	  		;
	  		(_ is 1+1)
	  ),
	  (C4=55
	  		->(T14 \= salami,T24 = olive)
	  		;
	  		(_ is 1+1)
	  ),
	  (C5=55
	  		->(T15 \= salami,T25 = olive)
	  		;
	  		(_ is 1+1)
	  )
	  ),
	  (
	  (T11=tuna,T21=corn
	  		->(C1 \= 65)
	  		;
	  		(_ is 1+1)
	  ),
	  (T12=tuna,T22=corn
	  		->(C2 \= 65)
	  		;
	  		(_ is 1+1)
	  ),
	  (T13=tuna,T23=corn
	  		->(C3 \= 65)
	  		;
	  		(_ is 1+1)
	  ),
	  (T14=tuna,T24=corn
	  		->(C4 \= 65)
	  		;
	  		(_ is 1+1)
	  ),
	  (T15=tuna,T25=corn
	  		->(C5 \= 65)
	  		;
	  		(_ is 1+1)
	  )
	  ),
	  (
	  (T21 = pineapple
	  		->(C1 \= 100)
	  		;
	  		(_ is 1+1)
	  ),
	  (T22 = pineapple
	  		->(C2 \= 100)
	  		;
	  		(_ is 1+1)
	  ),
	  (T23 = pineapple
	  		->(C3 \= 100)
	  		;
	  		(_ is 1+1)
	  ),
	  (T24 = pineapple
	  		->(C4 \= 100)
	  		;
	  		(_ is 1+1)
	  ),
	  (T25 = pineapple
	  		->(C5 \= 100)
	  		;
	  		(_ is 1+1)
	  )
	  ),
	  (
	  (P1=hawaiian
	  		-> (T11=mutton,C1 > 65)
	  		;
	  		(_ is 1+1)
	  ),
	  (P2=marco_polo
	  		-> (T22 = tomato,T12 \= chicken,C2=85)
	  		;
	  		(_ is 1+1)
	  ),
	  (P3=pepperini
	  		-> (C3=70)
	  		;
	  		(_ is 1+1)
	  ),
	  (P4=super_supreme
	  		-> (T24 \= pineapple)
	  		;
	  		(_ is 1+1)
	  ),
	  (P5=ninja
	  		-> (_ is 1+1)
	  		;
	  		(_ is 1+1)
	  )
	  ),
	  write(P1),write(' --- '),write(T11),write(' --- '),write(T21),write(' --- '),write(C1),writeln(' '),
	  write(P2),write(' --- '),write(T12),write(' --- '),write(T22),write(' --- '),write(C2),writeln(' '),
	  write(P3),write(' --- '),write(T13),write(' --- '),write(T23),write(' --- '),write(C3),writeln(' '),
	  write(P4),write(' --- '),write(T14),write(' --- '),write(T24),write(' --- '),write(C4),writeln(' '),
	  write(P5),write(' --- '),write(T15),write(' --- '),write(T25),write(' --- '),write(C5),writeln(' ').