/*  
Brandon Holmes, 500751878
Nya Samahan, 500634913
Rafael Natividadm, 500705909
Q1 */ 



add(N,IL,OL):- length(IL,0).
add(N,IL,OL):- N=0.
add(N,[X|L1],[X|L2]):-length(L2,0), C is N-1,add2(C,L1,L2).


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

/*3*/

grep(E,X,Y):- grep(E,X,Y,1).
grep(E,[],O,C).
grep(E,[E|T],[C|OT],C):-I is C+1,grep(E,T,OT,I).
grep(E,[H|T],O,C):-I is C+1,grep(E,T,O,I)