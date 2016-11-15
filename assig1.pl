mother_child(trude, sally).

father_child(tom, sally).
father_child(tom, arica).
father_child(mike,tom).

sibling(X,Y)  :- parent_child(S,X), parent_child(S,Y).

parent_child(X, Y) :- father_child(X, Y).
parent_child(X, Y) :- mother_child(X, Y).