-module(first).
-export([double/1, mult/2, area/3, square/1, treble/1, hme/3]).

mult(X, Y)->
  X*Y.

double(X)->
  mult(2, X).

area(A, B , C) ->
  S = (A+B+C) / 2,
  math:sqrt(S * (S-A)*(S-B)*(S-C)).

square(A) ->
  mult(A, A).

treble(A) ->
  mult(mult(A, A), A).


hme(_X, _X, _X) -> 3;
hme(_X, _X, _Y) -> 2;
hme(_X, _Y, _Y) -> 1;
