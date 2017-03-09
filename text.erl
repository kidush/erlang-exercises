-module (text).
-export ([take/2, tests/0]).

tests() ->
    "hell" = take(4, "hello"),
    []     = take(0, "hello"),
    []     = take(20, ""),
    tests_passed.

take(0, _Xs) ->
    [];
take(_N, []) ->
    [];
take(N, [X|Xs]) when N > 0 ->
    [X|take(N - 1, Xs)].
