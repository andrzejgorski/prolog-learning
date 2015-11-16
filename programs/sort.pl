
sort(X, Y):- perm(X, Y), sorted(Y).

sorted([]).
sorted([X|L1]):-
    lessThenHead(X, L1),
    sorted(L1).

lessThenHead(_, []).
lessThenHead(X, [Y| _L]):-
    lessOrEq(X, Y).

lessOrEq(X, Y):- X =< Y.

perm(X, Y):-
    zawiera(X, Y),
    zawiera(Y, X).

zawiera([], _List).
zawiera([El| Lista1], Lista2):-
    usun(El, Lista2, Lista3),
    zawiera(Lista1, Lista3).

usun(_Element, _Wynik, [], _Wynik).
usun(_Element, [_Element| Lista], _Acumulator, Lista).
usun(_Element, [_Element | _Lista1], _Lista2).
