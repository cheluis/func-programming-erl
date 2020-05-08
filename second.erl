-module(second).
-export([hypothenuse/2, perimeter/2, area/2]).

hypothenuse(A, B)->
    math:sqrt(first:double(A)+first:double(B)).


area(A, B)->
    first:mult(A, B)/2.


perimeter(A, B)->
    A + B + hypothenuse(A, B).
