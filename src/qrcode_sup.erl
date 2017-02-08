-module(qrcode_sup).
-behaviour(supervisor).

-export([start_link/0]).
-export([init/1]).

start_link() ->
    supervisor:start_link(?MODULE, []).

init([]) ->
    AChild = {?SERVER, {stateful,start_link,[]}, permanent, 2000, worker, [qrcode]}
    {ok, {{one_for_one, 1, 5},
            [AChild]
    }}.
