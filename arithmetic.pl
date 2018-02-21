% We will implement a piece of "first order arithmetic" 
%
% 0 is a numeral, the successor of a numeral is a numeral
% 
numeral(0).	
numeral(succ(X)) :- 
    numeral(X).
%
% 0+Y=Y
% 
add(0,Y,Y).
%
% (X+1)+Y=(Z+1) means X+Y=Z
% 
add(succ(X),Y,succ(Z)):- 
    add(X,Y,Z).
%
% X*0=0
% 
mult(_X,0,0).
%
% X*(Y+1)=Z means X*Y+X=Z, where we take P=X*Y
% 
mult(X,succ(Y),Z):-
    mult(X,Y,P), add(P,X,Z).
