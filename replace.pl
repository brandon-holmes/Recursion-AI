
/* "The list L2  results from replacing the very first occurrence 
 of X in the list  L1  by Y"

We will denote this English sentence by the predicate
	replaceFirst(X, Y, L1, L2)

We consider 3 cases when the above sentence is true:

1) Both lists L1 and L2 are empty. Then there is nothing to replace in L1,
   because X does not occur there.

2) The list L1 begins with X, i.e., L1 = [X | L], where L is the tail of L1.
   Then our sentence is true if and only if the list L2 begins with Y and
   its tail is identical to the tail of L1. In other words, L2 = [ Y | L].

3) The list L1 begins with Z which is different from X, i.e., 
   L1 = [Z | Tail1] _and_ not(X=Z). In this case, our sentence will be
   true if we will skip Z and will make sure that the sentence is true
   with respect to the elements in the tail of L1.  
   This last case also can be considered in the opposite direction. Suppose
   that our sentence is true. _If_ it is true and X is different from Z, 
   _then_ our sentence will be true if instead of L1 we write [Z | L1]
   in the sentence and instead of L2 we write [Z | L2] in the sentence.
   In Prolog we express "if statement_a then statement_b"  as
	statement_b :- statement_a.

Note that we considered all possible mutually exclusive cases, i.e.,
we did a complete analysis of all cases.
*/
replaceFirst(X, Y, [ ], [ ]).

replaceFirst(X, Y, [X | L], [Y | L]).

replaceFirst(X,Y, [Z | L1], [Z | L2]) :- not X = Z, replaceFirst(X,Y, L1, L2).

% not(X=Z) is ok here, because the 1st, 2nd and 3rd arguments are given inputs,
% the program computes the last argument: only the last argument is a variable.
% Note since X,Y variables occur both in the head and in the body of the last
% rule, they have same value eveywhere in this rule. Same applies to L1 and L2.

/*
Examples:  
	A. Transform "house" into "mouse"

	?- replaceFirst(h,m,[h,o,u,s,e],L).
	L = [m,o,u,s,e] ;

	B. Transform "[s,a,n,d]" into "[g,o,l,d]" - Exercise


-----------------------------------------------------
^L
*/


/* 
"The list L2 results from replacing all occurrences of X in the list  L1  by Y"
 We will denote this English sentence by the predicate
	replaceAll(X, Y, L1, L2)
*/

replaceAll(X, Y, [ ], [ ]).

replaceAll(X, Y, [X | L1], [Y | L2]) :- replaceAll(X, Y, L1, L2).

replaceAll(X, Y, [Z | L1], [Z | L2]) :- not X = Z, replaceAll(X, Y, L1, L2).


/* Examples: we can compute the list resulting from replacing an element by
   another element everywhere in the input list. In the simplest case, let 
   the original list be the list of English letters.

	A.  What list is the result of replacing p by m everywhere in the list [p,a,p,a] ?
	?- replaceAll(p, m, [p,a,p,a], L).
	L = [m,a,m,a] .
        yes

	B. Transform "[s,p,e,e,d]" into "[p,i,z,z,a]" - Exercise.
	
*/
