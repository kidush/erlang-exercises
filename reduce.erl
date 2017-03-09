-module (reduce).
-export ([sum/1]).

sum(Xs) ->
    reduce(fun plus/2, 0, Xs).

plus(X, Y) ->
    X + Y.

reduce(_Combine, Start, []) ->
    Start;
reduce(Combine, Start, [X|Xs]) ->
    Combine(X, reduce(Combine, Start, Xs)).