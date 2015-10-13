lessOrEq(0, X).
lessOrEq(s(X), s(Y)):- lessOrEq(X, Y).

sort(X, Y):- perm(X, Y), sorted(Y).
sorted([]).
sorted([X|L1]):-
    lessThenHead(X, L1),
    sorted(L1).

lessThenHead(X, []).
lessThenHead(X, [Y, L]):-
    less(X, Y).

% TODO
perm(X, Y):- 
