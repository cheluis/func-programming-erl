-module(third).
-export([fac/1, fibo/1, tail_sum/1, tail_fib/3, tail_fib/1, perfect/1]).


fac(0) ->
    1;

fac(N) when N>0 ->
    fac(N-1)*N.

fibo(0) ->
    0;

fibo(1) ->
    1;

fibo(2) ->
    1;

fibo(N) when N>0 ->
    fibo(N-2) + fibo(N-1). 


tail_sum(N) ->
    tail_sum(N, 0).

tail_sum(0, P) ->
    P;

tail_sum(N, P) ->
    tail_sum(N-1, N+P).


tail_fib(0, P, _C) ->
    P;

tail_fib(N, P, C) ->
    tail_fib(N-1, C, P + C).


tail_fib(N) ->
    tail_fib(N, 0, 1).


perfect(N, N, S) ->
    N==S;

perfect(N, M, S) when N rem M == 0 ->
    perfect(N, M+1, S+M);

perfect(N, M, S) ->
    perfect(N, M+1, S).

perfect(N) ->
    perfect(N, 1, 0).