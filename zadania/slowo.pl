%slowo

slowo(L):-
    slowo(L, []).

slowo([a|L], B):-
    slowo(L, [b|B]).

slowo(B, B).
