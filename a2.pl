%part 1
status(L,Position,Orientation):-
	posDir(L,[0|0],east).

posDir([],[X|Y],D):-
	write("Position = ("),
	write(X),
	write(","),
	write(Y),
	write(")"),
	nl,
	write("Orientation = "),
	write(D).

posDir([L|L1],[X|Y],D):-
	(
		(L=left,D=east) -> (X1 is X,Y1 is Y,P = north)
		;
		(L=left,D=west) -> (X1 is X,Y1 is Y,P = south)
		;
		(L=left,D=south) -> (X1 is X,Y1 is Y,P = east)
		;
		(L=left,D=north) -> (X1 is X,Y1 is Y,P = west)
		;
		(L=right,D=east) -> (X1 is X,Y1 is Y,P = south)
		;
		(L=right,D=west) -> (X1 is X,Y1 is Y,P = north)
		;
		(L=right,D=south) -> (X1 is X,Y1 is Y,P = west)
		;
		(L=right,D=north) -> (X1 is X,Y1 is Y,P = east)
		;
		(L=move,D=east) -> (X1 is X+1,Y1 is Y,P = D)
		;
		(L=move,D=west) -> (X1 is X-1,Y1 is Y,P = D)
		;
		(L=move,D=north) -> (X1 is X,Y1 is Y+1,P = D)
		;
		(L=move,D=south) -> (X1 is X,Y1 is Y-1,P = D)
	),
	posDir(L1,[X1|Y1], P).


%part 2
movement(Ps,O,Pf):- Ps=[X1|T1],T1=[Y1|_],Pf=[X2|T2],T2=[Y2|_],write('['),move(X1,Y1,O,X2,Y2),write(']'),writeln(' ').


move(X1,Y1,O,X2,Y2):- (X1<X2 
						-> (
						   (O=east,write(move),write(','),X1new is X1+1,move(X1new,Y1,east,X2,Y2));
						   (O=north,write(right),write(','),move(X1,Y1,east,X2,Y2));
						   (O=south,write(left),write(','),move(X1,Y1,east,X2,Y2));
						   (O=west,write(right),write(right),write(','),move(X1,Y1,east,X2,Y2))
						   ) 
						; 
							(X1 > X2
								->(
								  (O=east,write(left),write(left),write(','),move(X1,Y1,west,X2,Y2));
								  (O=north,write(left),write(','),move(X1,Y1,west,X2,Y2));
				                  (O=south,write(right),write(','),move(X1,Y1,west,X2,Y2));
						   		  (O=west,write(move),write(','),X1new is X1-1,move(X1new,Y1,west,X2,Y2))
						   		  )
								;
								move_y(X1,Y1,O,X2,Y2)
								)
						).
move(X,_,_,X,_).


move_y(X1,Y1,O,X2,Y2):- (Y1<Y2 
						-> (
						   (O=east,write(left),write(','),move(X1,Y1,north,X2,Y2));
						   (O=north,write(move),write(','),Y1new is Y1+1,move(X1,Y1new,north,X2,Y2));
						   (O=south,write(left),write(left),write(','),move(X1,Y1,north,X2,Y2));
						   (O=west,write(right),write(','),move(X1,Y1,north,X2,Y2))
						   ) 
						; 
							(Y1 > Y2
								->(
								  (O=east,write(right),write(','),move(X1,Y1,south,X2,Y2));
								  (O=north,write(left),write(left),write(','),move(X1,Y1,south,X2,Y2));
				                  (O=south,write(move),write(','),Y1new is Y1-1,move(X1,Y1new,south,X2,Y2));
						   		  (O=west,write(left),write(','),move(X1,Y1,south,X2,Y2))
						   		  )
								;
								_ is 0+1
								)
						).
move_y(_,Y,_,_,Y).