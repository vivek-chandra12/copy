% Rule to calculate square of a number
square(N, S) :- S is N * N.

% Rule to find sum of two numbers
sum(X, Y, Z) :- Z is X + Y.

% Find the square of 5
?- square(5, X).
% Output: X = 25.

% Find the sum of 3 and 7
?- sum(3, 7, X).
% Output: X = 10.
