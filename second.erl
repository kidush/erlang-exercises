-module (second).
-export ([hypotenuse/2, perimeter/2]).

hypotenuse (A, B) ->
  math:sqrt(first:square(A) + first:square(B)).

permimeter(A, B, C) ->
  A + B + C
