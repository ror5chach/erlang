-module(p2).
-compile(export_all).

%%% tail recursion

%% factorial
tail_fac(N) -> tail_fac(N, 1).
tail_fac(0, Acc) 
    -> Acc;
tail_fac(N, Acc) when N > 0 
    -> tail_fac(N-1, N*Acc).

% 0,1,1,2,3,5,8,13,21,34,55,89.
%% fibonacci
% tail_fib(N) -> tail_fib(N, 0).
% tail_fib(0, Acc) 
%     -> Acc;
% tail_fib(1, Acc) 
%     -> Acc+1;
% tail_fib(N, Acc) when N > 1 
%     -> tail_fib(N-1, Acc) + tail_fib(N-2, Acc).

%reversing a list
tail_reverse(L) -> tail_reverse(L,[]).
tail_reverse([], Acc) 
    -> Acc;
tail_reverse([H|T], Acc) 
    -> tail_reverse(T, [H|Acc]).

