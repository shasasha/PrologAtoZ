father(michael, cathy).
father(michael,sharon).
father(charles_gordon,michael).
father(charles_gordon,julie).
father(charles,charles_gordon).
father(jim, melody).
father(jim, crystal).
father(elmo,jim).
father(greg,stephanie).
father(greg,danielle).

mother(melody,cathy).
mother(melody,sharon).
mother(hazel,michael).
mother(hazel,julie).
mother(eleanor,melody).
mother(eleanor,crystal).
mother(crystal,stephanie).
mother(crystal,danielle).

parent(X,Y) :- father(X,Y).
parent(X,Y) :- mother(X,Y).

ancestor(A,B) :- parent(A,B).
ancestor(A,C) :- parent(A,B),
				 ancestor(B,C).
				 
print_ancestors_of :- ancestor(X,Y),
					  read(Y),
					  write(X).