isUnion([], Set2, Set2).
isUnion([H|T], Set2, Union) :-
    member(H, Set2),
    isUnion(T, Set2, Union).
isUnion([H|T], Set2, [H|Union]) :-
    not(member(H, Set2)),
    isUnion(T, Set2, Union).

isIntersection([], _, []).
isIntersection([H|T], Set2, [H|Intersection]) :-
    member(H, Set2),
    isIntersection(T, Set2, Intersection).
isIntersection([H|T], Set2, Intersection) :-
    not(member(H, Set2)),
    isIntersection(T, Set2, Intersection).

isEqual([], []).
isEqual([H|T],Set2) :-
    select(H, Set2, NewSet2),
    isEqual(T, NewSet2).

    
