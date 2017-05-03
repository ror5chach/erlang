%% Pythagorean triplets are sets of integers {A,B,C} where A^2 + B^2 = C^2
%% The function pythag(N) generates a list of all integers {A,B,C} where A^2 + B^2 = C^2 
%% and where the sum of the sides is less than or equal to N.

-module(p1).
-compile(export_all).


%%% recursion

%% pythagorean triplets
trips(N) ->
 [{X,Y,Z} || X <- lists:seq(1,N), 
             Y <- lists:seq(1,N),
             Z <- lists:seq(1,N), 
             (X + Y + Z =< N) and
             (X*X + Y*Y =:= Z*Z) and
             (X =< Y)].

%% reversing a list
reverse([]) -> [];
reverse([H|T]) -> reverse(T) ++ [H].

%% factorial
factorial(0) -> 1;
factorial(N) -> N * factorial(N-1).

%% permutations of a list
permutations([]) -> [[]];
permutations(N) -> 
    [[H|T] || H <- N , T <- permutations(N -- [H])].


%% fibonacci
fib(0) -> 0;
fib(1) -> 1;
fib(N) -> fib(N-1) + fib(N-2).