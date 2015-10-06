swap([], []).
swap([X|L1], [X|L2]):- swap(L1, L2).
swap1([X|L1], [Y|L2]):- swap(L1, L2).
swap12([X|L1], [Y|L2]):- swap1(L1, L2).
