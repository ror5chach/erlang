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
tail_fib(N) -> tail_fib(N, 0, 1).
tail_fib(0, Acc, _R)
    -> Acc;
tail_fib(N, Acc, R) when N >= 1
    -> tail_fib(N-1, Acc+R, Acc).

%% reversing a list
tail_reverse(L) -> tail_reverse(L,[]).
tail_reverse([], Acc) 
    -> Acc;
tail_reverse([H|T], Acc) 
    -> tail_reverse(T, [H|Acc]).


%% A function f is defined by the rule that f(n)=n if n<3 and f(n)=f(n-1)+2f(n-2)+3f(n-3) if n> 3.
%% f(3) = 2 + 2(1) + 3(0) = 4.     f(4) = 4 + 2(2) + 3(1) = 11.
%% f(5) = 11 + 2(4) + 3(2) = 25.   f(6) = 25 + 2(11) + 3(4) = 59.
tail_f(N) -> tail_f(N, 2, 1, 0).
tail_f(0, _Acc, _R1, _R2)
    -> 0;
tail_f(1, _Acc, _R1, _R2)
    -> 1;
tail_f(2, Acc, _R1, _R2)
    -> Acc;
tail_f(N, Acc, R1, R2) when N >= 3
    ->tail_f(N-1, Acc+(2*R1)+(3*R2), Acc, R1).


%% return nth element of a list
tail_nth(L, N) -> tail_nth(L, N, []).
tail_nth([], _N, _Acc)
    -> [];
tail_nth([H|_], 0, _Acc)
    -> H;
tail_nth([H|T], N, _Acc)
    -> tail_nth(T, N-1, H).
