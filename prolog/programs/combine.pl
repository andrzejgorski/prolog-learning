combine([], [], []).
combine1([X|L1], L2, [X|L3]):- combine2(L1, L2, L3).
combine2(L1, [X|L2], [X|L3]):-
    combine(L1, L2, L3);
    combine1(L1, L2, L3).


combine3([], [], []).
combine3([X|L1], [Y|L2], [j(X, Y)|L3]):- combine3(L1, L2, L3).
