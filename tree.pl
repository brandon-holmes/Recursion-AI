/* REPLACE */

memberOfTree(X, tree(Root, Left, Right)) :- X=Root.
memberOfTree(X, tree(Node, Left, Right)) :- memberOfTree(X, Left).
memberOfTree(X, tree(Node, Left, Right)) :- memberOfTree(X, Right).

replace(X, Y, void, void).
replace(X, Y, tree(X, Left1, Right1), tree(Y, Left1, Right2)) :- replace(X,Y,Left1,Left2),replace(X,Y,Right1,Right2).
replace(X, Y, tree(Root, Left1, Right1), tree(Root, Left2, Right2)) :- replace(X, Y, Left1, Left2), replace(X, Y, Right1, Right2).
