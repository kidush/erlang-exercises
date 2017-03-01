-module (bits).
-export ([sumBits/1]).

sumBits(N) ->
    sumBits(N, N rem 2).

sumBits(0, 0) ->
    0;
sumBits(1, Bit) ->
    Bit;
sumBits(N, Bit) when N > 0 ->
    sumBits(N div 2, Bit + (N div 2) rem 2).