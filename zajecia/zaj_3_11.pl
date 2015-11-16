%uzg
tesame(P, P).
uzg([_]).
uzg([X, X|Z]):- uzg([X|Z]).

uzg([X|Z], X):- uzg(Z).


%max2
max2([]).
max2([X|L]):-
    max2([X|L], X, _Z).

max2([X|L], X, Z):-
    max2(L, X, Z).

max2([Z|L], X, Z):-
    max2(L, X, Z).

max2([], _A, _B).


%rozneZmienne

rz([X|X]):- rz(X).
rz([]).
