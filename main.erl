-module(main).
-import(lib, [total_return/0]).
-export([start/0]).

start() ->
    total_return().
