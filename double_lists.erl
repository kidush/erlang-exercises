-module (double_lists).
-export ([double/1, tests/0]).


tests() ->
    [1,1,2,2,3,3] = double([1, 2, 3]),
    [3,3,6,6,10,10,100,100] = double([3, 6, 10, 100]),
    tests_passed.

double([]) ->
    [];
double([X|Xs]) ->
    [X, X | double(Xs)].