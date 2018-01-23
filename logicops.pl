%
% Negation in prolog is written using the following symbols: \+
% to negate p(a), you write \+ p(a).
% 
% Negation in prolog is understood as "not provable from the facts"
% 

%
% The following is a "fact" we declare to be true
% 
p(a).
%
% Define a conjunction of X and Y (i.e. "and")
%
conj(X,Y) :- X,Y.
%
% Define a disjunction of X and Y (i.e. "or") 
% See Definition 1.6 in the text or your notes
% 
disj(X,Y) :- \+ conj(\+ X,\+ Y).

