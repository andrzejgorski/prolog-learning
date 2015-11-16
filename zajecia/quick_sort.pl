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

%append_flatten
append_flatten([], []).
append_flatten(X, [X]).

append_flatten([X|L], F):-
    append_flatten(X, XF),
    append_flatten(L, LF),
    append(XF, LF, F).

%flatten
flatten(L, L1):-
    flatten(L, [], L1).

flatten([], [], []).

flatten([E|L], A, F):-
    flatten(L, A, LF),
    flatten(E, LF, F).

flatten([], A, A).
flatten(X, A, [X|A]).

%suma

add(x, X, X).
add(s(X), Y, s(Z)):- add(X, Y, Z).

add(liczba(I1, J1), liczba(I2, J2), liczba(I3, J3)):-
    add(I1, I2, I3),
    add(J1, J2, J3).

suma(L, W):-
    suma(L, liczba(x, x), W).

suma([X|L], A, W):-
    add(X, A, WX),
    suma(L, WX, W).

suma([], X, X).
