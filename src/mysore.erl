%%% @doc Core
-module(mysore).
-behaviour(gen_server).

%% API
-export([ start_link/0 ]).

%% Callbacks
-export([ init/1
        , handle_call/3
        , handle_cast/2
        , handle_info/2
        , code_change/3
        , terminate/2
        ]).

-record(state, { }).

-define(SERVER, mysore).


start_link() -> gen_server:start_link({local, ?SERVER}, ?MODULE, [], []).

init([]) -> {ok, #state{}}.

handle_call({get, K}, _From, State) ->
  Reply = {ok, K},
  {reply, Reply, State}.

handle_cast(_Call, State) -> {noreply, State}.

handle_info(_Call, State) -> {noreply, State}.

code_change(_OldVsn, State, _Extra) -> {ok, State}.

terminate(normal, _State) -> ok.

%%% Local Variables:
%%% erlang-indent-level: 2
%%% indent-tabs-mode: nil
%%% End:
%%% ex: ts=2 sw=2 et
