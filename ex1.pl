pai(ad�o,cain).
pai(ad�o,abel).
pai(ad�o,seth).
pai(seth,enos).

av�(X,Y):- pai(X,Z),pai(Z,Y).

irm�o(X,Y):- pai(Z,X),pai(Z,Y),X\=Y.
