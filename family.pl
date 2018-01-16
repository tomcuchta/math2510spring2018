male(jim).
male(bob).
male(joe).
male(john).
male(jerry).
male(tim).
male(ted).

female(mary).
female(alice).
female(sue).

parent(jim,bob).
parent(jim,joe).
parent(jim,sue).
parent(mary,bob).
parent(mary,joe).
parent(mary,sue).
parent(alice,jerry).
parent(john,jerry).
parent(sue,tim).
parent(sue,ted).
parent(jerry,tim).
parent(jerry,ted).

sibling(X,Y) :- 
    parent(Z,X),
    parent(Z,Y).

grandchild(X,Y) :-
    parent(Y,Z),
    parent(Z,X).
