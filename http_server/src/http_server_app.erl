%%%-------------------------------------------------------------------
%% @doc http_server public API
%% @end
%%%-------------------------------------------------------------------

-module(http_server_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    Dispatch = cowboy_router:compile([
                                      {'_', [{"/sample", sample_handler, <<"Hello world!\n">>}]}
                                     ]),

    {ok, _} = cowboy:start_clear(http_listener,
                                [{port, 4000}],
                                #{env => #{dispatch => Dispatch}}
                                ),

    http_server_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
