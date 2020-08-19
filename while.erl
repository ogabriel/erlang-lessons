-module(while).
-import(io, [fwrite/2]).
-export([start/0]).

while([]) -> ok;
while([Head|Tail]) ->
	fwrite("~w~n", [Head]),
	while(Tail).

start() ->
	while([1, 2, 3, 4, 5, 6]).
