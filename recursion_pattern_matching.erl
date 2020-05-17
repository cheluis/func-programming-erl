-module(recursion_pattern_matching).
-export([bits/1, perimeter/1]).

bits(0, P) ->
    P;


bits(N, P) ->
    bits(trunc(N/2), P + (trunc(N) rem 2)).


bits(N) ->
    bits(N, 0).


perimeter({triangle, {A, B, C}}) ->
    A + B + C.