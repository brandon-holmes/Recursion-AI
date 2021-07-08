/* 1 */
add(N,InputList,OutputList):- length(InputList,0).
add(N,InputList,OutputList):- not length(OutputList,0), fail.
add(N,InputList,OutputList):- N=0.
add(N,[X|L1],[X|L2]):- C is N-1,add(C,L1,L2).




/* 2 */
convert([],[]).
convert( [H1|T1], [H2|T2]) :- dictionary(H1, H2), convert(T1,T2).
dictionary(one, 1).
dictionary(two, 2).
dictionary(three, 3).
dictionary(four, 4).
dictionary(five, 5).
dictionary(six, 6).
dictionary(seven, 7).
dictionary(eight, 8).
dictionary(nine, 9).
dictionary(zero, 0).

/*3
grep(E,[H|T],[OH|OT]):- grep(E,[H|T],[1],1). 
grep(E,[],X,C).
grep(E,[H|T],[],C):- grep(E,[H|T],[C],C).
gre|T],[OH|OT],C):- not E=H,I is C+1,grep(E,T,[C],I).
grep(E,[H|T],[OH|OT],C):- E=H,J is C+1,grep(E,T,OT,J).
*/
grep(E,X,Y):- grep(E,X,Y,1).
grep(E,[],O,C).
grep(E,[E|T],[C|OT],C):-I is C+1,grep(E,T,OT,I).
grep(E,[H|T],O,C):-I is C+1,grep(E,T,O,I)