-module (third).
-export ([maxThree/3, maxFour/4]).

maxThree (A, B, C) ->
    max(max(A, B), C).

maxFour (A, B, C, D) ->
    max(maxThree(A, B, C), D).