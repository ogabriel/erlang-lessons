-module(factorial).
-export([calculate/1, start/1]).

calculate(0) -> 1;
calculate(N) ->
	N * calculate(N - 1).

start(N) ->
	io:fwrite("~w~n", [calculate(N)]).
