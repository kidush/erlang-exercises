-module (higher_order).
-export ([doubleAll/1, evens/1, product/1, tests/0]).

tests() ->
    % doubleAll tests
    [4, 8, 12] = doubleAll([2, 4, 6]),
    [] = doubleAll([]),
    [0] = doubleAll([0]),

    % evens tests
    [2, 4, 6] = evens([1, 2, 3, 4, 5, 6, 7]),

    % product tests
    5040 = product([1, 2, 3, 4, 5, 6, 7]),
    tests_passed.

doubleAll(Xs) ->
    lists:map(fun double/1, Xs).

double(X) ->
    2 * X.

evens(Xs) ->
    lists:filter(fun even/1, Xs).

even(X) ->
    X rem 2 == 0.

product(Xs) ->
    lists:foldr(fun times/2, 1, Xs).

times(X, Y) ->
    X * Y.