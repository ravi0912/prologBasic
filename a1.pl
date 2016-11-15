%append two List

app([],L,L).
app([X|Y],L,[X|W]) :- app(Y,L,W).

%successor
 
succ(X,R):- app(X,[x],R),!.

%predicate plus
predplus(X,Y,R):- app(X,Y,R),!.

%predicate subtract
subtract(X,[],X):- !.
subtract([],Y,[]):- !.
subtract([A|X],[B|Y],R):-	subtract(X,Y,R).	

%predicate multiply
multiply([],X,[]):-!.
multiply([x],X,X):-!.
app([],X,X).

multiply([H|T],X,R):-
	multiply(T,X,R1),
	app(R1,X,R),!.


%predicate division
division(X,X):- write("Yes"),!.
division([],X):- write("No"),!.
division(X1,X2):-
	subtract(X1,X2,R),
	division(R,X2).

