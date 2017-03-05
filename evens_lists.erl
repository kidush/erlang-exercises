-module (evens_lists).
-export ([evens/1, tests/0]).

tests() ->
    [] = evens([]),
    [2, 4, 6, 8, 10] = evens([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]),
    [] = evens([1, 3, 5, 7]),
    tests_passed.

evens([]) ->
    [];
evens([X|Xs]) when X rem 2 == 0 ->
    [X | evens(Xs)];
evens([_X|Xs]) ->
    evens(Xs).
