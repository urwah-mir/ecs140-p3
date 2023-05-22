reachable(State, State, []).

reachable(StartState, FinalState, [H|T]) :-
    transitions(StartState, H, PossibleStates),
    member(PossibleState, PossibleStates),
    reachable(PossibleState, FinalState, T).
    
