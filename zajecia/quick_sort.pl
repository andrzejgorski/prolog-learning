%quicksort
quicksort([], []).

quicksort([F|L], S):-
    quicksort(L, F, [], [], S).

quicksort([E|L], F, M, WR, S):-
    E < F,
    quicksort(L, F, [E|M], WR, S).

quicksort([E|L], F, M, WR, S):-
    E >= F,
    quicksort(L, F, M, [E|WR], S).

quicksort([], F, M, WR, S):-
    quicksort(M, SM),
    quicksort(WR, SWR),
    append(SM, [F|SWR], S).


%qsort
qsort([], []).
qsort([F|L], S):-
    part(L, F, M, WR),
    qsort(M, SM),
    qsort(WR, SWR),
    append(SM, [F|SWR], S).

part([], _F, [], []).

part([E|L], F, [E|M], WR):-
    E < F,
    part(L, F, M, WR).

part([E|L], F, M, [E|WR]):-
    E >= F,
    part(L, F, M, WR).


%qsortacc with accumulator
qsorta([], []).
qsorta(L, S):-
    qsorta(L, [], S).

qsorta([], S, S).

qsorta([X|L], A, S):-
    part(L, X, M, WR),
    qsorta(WR, A, SWR),
    qsorta(M, [X|SWR], S).


%cw domowe poprawic qsorta
%zadanie 3 z moodla


%flatten

flatten([], []).
flatten([], X, X).
