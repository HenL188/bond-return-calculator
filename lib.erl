-module(lib).
-export([total_return/0]).

current_value() ->
    X = io:get_line("Enter current value: "),
    try
        string:to_float(X),
        true
    catch
        error ->
            false
    end.

total_interest() ->
    X = io:get_line("Enter total intertest: "),
    string:to_float(X).

buy_value() ->
    X = io:get_line("Enter price brougt for: "),
    string:to_float(X).

total_return() ->
    X = current_value(),
    CV = parse(X),
    Y = total_interest(),
    I = parse(Y),
    Z = buy_value(),
    BV = parse(Z),
    (CV + I - BV) / BV * 100.

parse(X) ->
    TL = tuple_to_list(X),
    [HD | _] = TL,
    HD.
