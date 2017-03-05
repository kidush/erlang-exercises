-module (double_lists).
-export ([double/1, tests/0]).

tests() ->
    [2, 4, 6] = double([1, 2, 3]),
    [6, 12, 20, 200] = double([3, 6, 10, 100]),
    tests_passed.

double([]) ->
    [];
double([X|Xs]) ->
    [X*2  | double(Xs)].