padre(marcelo,hermeregildo).
padre(marcelo,jesus).
madre(debora,marcela).
padre(hermeregildo,elkakas).
madre(marcela,isra).

progenitor(X,Y):-padre(X,Y).
progenitor(X,Y):-madre(X,Y).

antepasado(X,Y):-progenitor(X,Y).
antepasado(X,Y):-progenitor(Y,Z),antepasado(Z,Y).

hermano(X,Y):-progenitor(Z,X), progenitor(Z,Y).
hermana(X,Y):-progenitor(Z,X), progenitor(Z,Y).

abuelo(X,Y):-hombre(X),padre(X,Z),progenitor(Z,Y).
abuela(X,Y):-mujer(X),madre(X,Z),progenitor(Z,Y).