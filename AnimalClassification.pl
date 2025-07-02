% Facts about animals
animal(dog).
animal(cat).
animal(elephant).

mammal(dog).
mammal(cat).
mammal(elephant).

has_fur(dog).
has_fur(cat).
has_trunk(elephant).


%rules
% Rule: If X is a mammal and has fur, it is a pet.
pet(X) :- mammal(X), has_fur(X).

% Rule: If X has a trunk, it is a large animal.
large_animal(X) :- has_trunk(X).


%queries
% Is a dog a mammal?
?- mammal(dog).
% Output: Yes

% What animals are pets?
?- pet(X).
% Output: X = dog, X = cat.

% Is an elephant a large animal?
?- large_animal(elephant).
% Output: Yes
