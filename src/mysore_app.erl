%% -*- erlang-indent-level: 2; indent-tabs-mode: nil -*-
%% ex: ts=2 sw=2 et
%% @doc Application
-module(mysore_app).
-behaviour(application).

%% API
-export([ start/2
        , stop/1
        ]).


start(_Type, _Args) -> mysore_sup:start_link().

stop(_State) -> ok.
