n(succ(Y), Y).
g(X, Y):-
    n(X, Y).
g(succ(X), Y):-
    g(X, Y).


greatherThen(succ(0), 0).
greatherThen(X, Y):- greatherThen(succ(X), succ(Y)).
