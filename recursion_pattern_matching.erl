-module(recursion_pattern_matching).
-export([bits/1, perimeter/1, listSum/1]).

listSum(L) -> 
    listSum(L, 0).

listSum([H|T], S) ->
    listSum(T, H+S);

listSum([], S) ->
    S.


bits(0, P) ->
    P;

% divide number by 2 and sum of the remainder of the division
bits(N, P) ->
    bits(trunc(N/2), P + (trunc(N) rem 2)).


bits(N) ->
    bits(N, 0).


%Not sure about the first assignment.
perimeter({triangle, {A, B, C}}) ->
    A + B + C;

%perimeter of shape is sum of all the sides
perimeter({shape, L}) -> 
    listSum(L).
