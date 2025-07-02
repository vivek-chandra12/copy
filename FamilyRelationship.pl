male(john).
male(peter).
female(mary).
female(susan).

parent(john, peter).
parent(john, mary).
parent(mary, susan).

% Rule: X is a father if X is male and X is a parent.
father(X, Y) :- male(X), parent(X, Y).

% Rule: X is a mother if X is female and X is a parent.
mother(X, Y) :- female(X), parent(X, Y).

% Rule: X is a sibling of Y if they share a parent.
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% Who are Peter's siblings?
?- sibling(peter, X).
% Output: X = mary.

% Who is the father of Mary?
?- father(X, mary).
% Output: X = john.
