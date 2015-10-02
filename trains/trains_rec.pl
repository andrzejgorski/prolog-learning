travelFromTo(X, Y):- directTrain(X, Y).

travelFromTo(X, Y):- travelFromTo(X, Z),
    directTrain(Z, Y).
