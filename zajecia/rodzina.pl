
% pierwszy argument relacji dziecko to jest jego nazwa.
% drugi argument to nazwa ojca, a trzeci nazwa matki.
dziecko('Michal', 'Jan', 'Monika').
dziecko('Julia', 'Jan', 'Monika').
dziecko('Zbigniew', 'Michal', 'Monika').
dziecko('Mariusz', 'Jan', 'Kasia').
dziecko('Kasia', 'Jan', 'Monika').
dziecko('Czartozy', 'Stefan', 'Monika').

% matka(Dziecko, Matka).
matka(Dziecko, Matka):- dziecko(Dziecko, _Ojciec, Matka).

% ojciec(Dziecko, Ojciec).
ojciec(Dziecko, Matka):- dziecko(Dziecko, Ojciec, _Matka).

% rodzic(Dziecko, Rodzic).
rodzic(Dziecko, Rodzic):-
    ojciec(Dziecko, Rodzic).

rodzic(Dziecko, Rodzic):-
    matka(Dziecko, Rodzic).

babcia(Wnuczek, Babcia):-
    matka(_Rodzic, Babcia),
    rodzic(Wnuczek, _Rodzic).

dziadek(Wnuczek, Dziadek):-
    ojciec(_Rodzic, Babcia),
    rodzic(Wnuczek, _Rodzic).

wnuk(Wnuczek, SuperRodzic):-
    rodzic(_Rodzic, SuperRodzic),
    rodzic(Wnuczek, _Rodzic).

% przodek(Przodek, Potomek)
przodek(Przodek, Potomek).

