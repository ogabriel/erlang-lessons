-module(record).
-record(person, {name = "", age}).

person_record() ->
	P = #person{name="Foo", age=28},
	P1 = P#person{name="Bar"}.
