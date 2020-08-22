-module(types).
-export([]).

integer() ->
	Int = 10,
	IntBinary = 2#1010,
	IntOcta = 8#12,
	IntHexa = 16#A,
	IntAbs = -3.14,
	IntFloat = float(3).

float() -> 1.25.

character() -> $1.

string() ->
	String = "Test",
	% 4
	string:len(String),
	% true
	string:equal(String, "Test"),
	% Test 123
	string:concat(String, " 123"),
	% 1
	string:chr(String, $T),
	% 3
	string:str(String, "st").

tuple() -> {ok, test}.

list() ->
	List = [1, 2, 3, 4],
	% [3,4]
	lists:filter(fun(N) -> N > 2 end, List),
	% [2, 4, 6, 8]
	lists:map(fun(N) -> N * 2 end, List),
	% [1, 2, 4, 4, 5]
	lists:append(List, [5]),
	% 2
	lists:nth(2, List),
	% [3, 4]
	lists:nthtail(2, List),
	% 4
	lists:last(List).

map() -> #{name => gabriel, age => 21}.
