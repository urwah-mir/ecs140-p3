reachable(State, State, []).

reachable(StartState, FinalState, [H|T]) :-
    transition(StartState, H, PossibleStates),
    member(PossibleState, PossibleStates),
    reachable(PossibleState, FinalState, T).
    
