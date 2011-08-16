%%% @doc Supervisor
-module(mysore_sup).
-behaviour(supervisor).

%% API
-export([ start_link/0 ]).

%% Callbacks
-export([ init/1 ]).

-define(CHILD(I, Type), {I, {I, start_link, []}, permanent, 5000, Type, [I]}).
-define(SERVER, mysore_sup).

start_link() -> supervisor:start_link({local, ?SERVER}, ?MODULE, []).

init([]) ->
  {ok, { {one_for_one, 5, 10}
       , [?CHILD(mysore, worker)]
       }}.
