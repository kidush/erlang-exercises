-module (fib).
-export ([fib/1]).

% STEP-BY-STEP for fib(4) 
%  fib(4)
%  = fib(3) + fib(2)
%  = (fib(2) + fib(1)) + 1
%  = (1 + 1) + 1 
%  = 3

fib(0) ->
    0;
fib(1) ->
    1;
fib(2) ->
    1;
fib(N) ->
    fib(N - 1) + fib(N - 2).