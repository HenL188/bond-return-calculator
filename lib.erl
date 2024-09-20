-module(lib).
-export([total_return/0, current_value/0]).

current_value() ->
    X = io:read("Enter current value: "),
    case X of
        {ok, Y} ->
            if
                is_float(Y) == true ->
                    Y;
                is_float(Y) == false ->
                    io:format("Error not a float ~n"),
                    current_value()
            end
    end.

total_interest() ->
    X = io:read("Enter total intertest: "),
    case X of
        {ok, Y} ->
            if
                is_float(Y) == true ->
                    Y;
                is_float(Y) == false ->
                    io:format("Error not a float ~n"),
                    total_interest()
            end
    end.

buy_value() ->
    X = io:read("Enter price brougt for: "),
    case X of
        {ok, Y} ->
            if
                is_float(Y) == true ->
                    Y;
                is_float(Y) == false ->
                    io:format("Error not a float ~n"),
                    buy_value()
            end
    end.

total_return() ->
    CV = current_value(),
    I = total_interest(),
    BV = buy_value(),
    (CV + I - BV) / BV * 100.
