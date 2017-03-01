-module (shapes).
-export ([perimeter/1, area/1]).

perimeter({circle, R}) ->
    2*math:pi()*R;
perimeter({square, X}) ->
    4 * X;
perimeter({rectangle, X, Y}) ->
    2 * (X + Y);
perimeter({triangle, X, Y, Z}) ->
    X + Y + Z.

area({circle, R}) ->
    math:pi()*math:pow(R, 2);
area({square, X}) ->
    X * X;
area({rectangle, X, Y}) ->
    X * Y.

enclose() ->
