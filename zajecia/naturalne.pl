% zero jest liczbą naturalną
nat(0).

% następnik liczby naturalnej jest liczb naturalną
nat(s(X)):- nat(X).

%plus(X, Y, Z) := X + Y = Z

plus(0, N, N).
%plus(X, Y, Z):- plus(Y, X, Z).
%plus(s(X), Y, Z):- plus(X, s(Y), Z).
plus(s(X), Y, s(Suma)):- plus(X, Y, Suma).

minus(X, 0, X).
minus(s(X), s(Y), Z):- minus(X, Y, Z).

%fib(k, n) n to kta liczba fibonaciego
fib(0, 0).
fib(s(0), s(0)).

fib(s(s(K)), N):-
    fib(s(K), F1),
    fib(K, F2),
    plus(F1, F2, N).

lessOrEq(X, X).
lessOrEq(X, s(Y)):- lessOrEq(X, Y).

less(X, s(X)).
less(X, s(Y)):- less(X, Y).

mod(_X, _X, _Z).
