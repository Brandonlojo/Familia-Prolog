padre(luis,juan).
padre(luis,pedro).
padre(roberto,pepe).
padre(roberto,agustin).
padre(filomeno,roberto).
padre(filomeno,luis).

madre(gisel,juan).
madre(gisel,pedro).
madre(camila, pepe).
madre(julieta, agustin).
madre(ana, gisel).


hermanos(Hermano1,Hermano2):- madre(Madre,Hermano1),
                                madre(Madre,Hermano2),
                                Hermano1 \= Hermano2.
hermanos(Hermano1,Hermano2):- padre(Padre,Hermano1),
                                padre(Padre,Hermano2),
                                Hermano1 \= Hermano2.


tio(Tio,Sobrino):- hermanos(Tio, Padre),
                    padre(Padre, Sobrino).

primos(Chico1, Chico2):- padre(Padre1, Chico1),
                        padre(Padre2, Chico2),
                        hermanos(Padre1,Padre2).

abuelo(Abuelo, Nieto):- padre(Abuelo,Padre),
                        padre(Padre,Nieto).

abuela(Abuela, Nieto):- madre(Abuela,Madre),
                        madre(Madre,Nieto).

