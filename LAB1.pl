% Предикат для перевірки, чи елемент є у списку рівно один раз
contains_once(Item, List) :-
    include(==(Item), List, [Item]).

% Предикат для фільтрації першого списку
filter_list([], _, []).

filter_list([Head|Tail], List, [Head|Result]) :-
    contains_once(Head, List),
    filter_list(Tail, List, Result).

filter_list([_|Tail], List, Result) :-
    filter_list(Tail, List, Result).