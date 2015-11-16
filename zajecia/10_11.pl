last([X|L], E):- last(L, X, E).

last([], E, E).
last([X|L], _, E):- last(L, X, E).
