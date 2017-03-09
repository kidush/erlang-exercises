-module (palindrome).
-export ([palindrome/1]).

palindrome([]) ->
    [];
palindrome([X|Xs]) ->