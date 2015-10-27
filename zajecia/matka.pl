% matka(Dziecko, Matka).

% ojciec(Dziecko, Ojciec).

% rodzic(Dziecko, Rodzic).

matka(weronika, malgosia).
ojciec(weronika, janusz).

rodzic(Dziecko, Rodzic):-
    ojciec(Dziecko, Rodzic);
    matka(Dziecko, Rodzic).
