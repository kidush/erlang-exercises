-module (my_lists).
-export ([sum/1, product/1]).


% Sum with Tail recursion
sum(Xs) ->
    sum([Xs, 0).
sum([], S) ->
    S;
sum([X|Xs], S) ->
    sum(Xs, X + S).

product(Xs) ->
    product(Xs, 1).
product([], S) ->
    S;
product([X|Xs], S) ->
    product(Xs, X * S).