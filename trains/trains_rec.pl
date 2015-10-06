travelFromTo(X, Y):- directTrain(X, Y).

travelFromTo(X, Y):-
    directTrain(Z, Y),
    travelFromTo(X, Z).
