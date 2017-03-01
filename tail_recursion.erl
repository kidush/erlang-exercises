-module (tail_recursion).
-export ([fib/1, fib/3, perfect/1, perfect/3]).

fib(N) -> fib(N, 0, 1).
fib(0, Acc1, _Acc2) -> Acc1;
fib(N, Acc1, Acc2) when N > 0 ->
    fib(N - 1, Acc2, Acc1 + Acc2).


perfect(N, N, S) -> N == S;
perfect(N, M, S) when N rem M == 0 ->
    perfect(N, M + 1, S + M);
perfect(N, M, S) ->
    perfect(N, M + 1, S).

perfect(N) ->
    perfect(N, 1, 0).