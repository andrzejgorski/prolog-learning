%lista
lista([]).
lista([_Element|_Lista]).

%podzbior
podzbior([], _Lista).

podzbior([Element|Podzbior], [Element|Lista]):-
    podzbior(Podzbior, Lista).

podzbior(Podzbior, [_Element|Lista]):-
    podzbior(Podzbior, Lista).

%podlista
pl(Y, XYZ):-
    append(_X, YZ, XYZ),
    append(Y, _Z, YZ).

%tuzPrzed
tuzPrzed(X, Y, L):-
    append(_Dow, [X, Y|_Dow2], L).

%przed
przed(X, Y, L):-
    append(_Dow, [X| L2], L),
    append(_Dow2, [Y| _Dow3], L2).

%odwrotna
nrev([], []).
nrev([X|L], R):-
    nrev(L, LR),
    append(LR, [X], R).

rev([], []).
rev(L, R):-
    rev(L, [], R).

rev([E|X], Y, R):-
    rev(X, [E|Y], R).

rev([], X, X).


%palindrom
pal(X):-
    pal(X, []).

pal([_E|List], List).
pal(X, X).

pal([E|X], Y):-
    pal(X, [E|Y]).


%sufiksy
suf(L, L).
suf([_E|_L], S):-
    suf(_L, S).

%flaga polska
fp(L, F):-
    fp(L, [], F).

fp([], C, C).

fp([b|L], C, [b|F]):-
    fp(L, C, F).

fp([c|L], C, F):-
    fp(L, [c|C], F).

%slowo

slowo(X):- slowo(X, []).
slowo([a|X], B):- slowo(X, [b|B]).

slowo(X, X).
