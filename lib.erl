-module(lib).
-export([total_return/0]).

current_value() ->
    X = io:get_line("Enter current value: "),
    CV = string:to_integer(X),
    CV.

total_interest() ->
    X = io:get_line("Enter total intertest: "),
    string:to_integer(X).
%Y = tuple_to_list(X),
%Y.

buy_value() ->
    X = io:get_line("Enter price brougt for: "),
    string:to_integer(X).
%Y = tuple_to_list(X),
%Y.
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
