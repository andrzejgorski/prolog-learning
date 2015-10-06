
negation(kierunek(przod), kierunek(tyl)).
negation(kierunek(dol), kierunek(gora)).
negation(kierunek(lewo), kierunek(prawo)).

sasiad(a, b, kierunek(dol)).

sasiad(X, Y, kierunek(K1)):-
    negation(kierunek(K1), kierunek(K2)),
    sasiad(Y, X, kierunek(K2)).

negation(X, Y):- negation(Y, X).
