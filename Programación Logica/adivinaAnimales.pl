inicio:-
write('En este juego existen 20 animales distintos: Tiburon, Vibora, Tortuga, Delfin, Gato, Tiburon, 
Rana, Lagartija,Pinguino, Pato, Gallina, Conejo, León, Mono, Araña. Mariposa, Venado, Elefante, Ballena y Perro.'),
nl,nl,
write('Responde las siguientes preguntas para adivinar el animal que estas pensando'),
nl,
es(Animal),
nl,nl,
write('===================================='),
nl,
write('El animal es: '),
write(Animal),
nl,
write('====================================').

es(tiburon):- tiburon,!.
es(vibora):- vibora,!.
es(tortuga):- tortuga,!.
es(delfin):- delfin,!.
es(gato):- gato,!.
es(cocodrilo):- cocodrilo,!.
es(rana):- rana,!.
es(lagartija):- lagartija,!.
es(pinguino):- pinguino,!.
es(pato):- pato,!.
es(gallo):- gallo,!.
es(conejo):- conejo,!.
es(leon):- leon,!.
es(mono):- mono,!.
es(araña):- araña,!.
es(mariposa):- mariposa,!.
es(venado):- venado,!.
es(elefante):- elefante,!.
es(ballena):- ballena,!.
es(perro):- perro,!.

tiburon:- comprobar(es_carnivoro), comprobar(vive_en_oceanos), nada, comprobar(es_un_pez).
delfin:- comprobar(es_carnivoro), comprobar(vive_en_oceanos),nada, comprobar(es_un_mamifero).
ballena:- comprobar(es_carnivoro), comprobar(vive_en_oceanos), comprobar(es_un_mamifero), comprobar(planton).
vibora:- comprobar(es_carnivoro), comprobar(vive_en_rios),piel, comprobar(es_un_reptil).
cocodrilo:- comprobar(es_carnivoro), comprobar(vive_en_rios), comprobar(es_un_mamifero), comprobar(es_de_color_verde).
gato:- comprobar(es_carnivoro), comprobar(es_domestico), comprobar(es_un_mamifero), comprobar(maulla).
perro:- comprobar(es_carnivoro), comprobar(es_domestico), comprobar(es_un_mamifero), comprobar(ladra).
lagartija:- comprobar(es_carnivoro), comprobar(vive_en_bosques), comprobar(es_un_anfibio), comprobar(puede_cortar_su_cola).
pinguino:- comprobar(es_carnivoro), comprobar(vive_en_la_antartida), comprobar(es_un_ave), comprobar(no_vuela).
leon:- comprobar(es_carnivoro), comprobar(viven_en_sabana), comprobar(es_un_mamifero), comprobar(melena).
araña:- comprobar(es_carnivoro), comprobar(viven_en_jardines), comprobar(es_un_invertebrado), comprobar(patas).
tortuga:- comprobar(es_herbivoro), comprobar(vive_en_rios), comprobar(es_un_reptil), comprobar(tiene_caparazon).
conejo:- comprobar(es_herbivoro), comprobar(viven_en_campos),comprobar(salta), comprobar(es_un_mamifero).
mariposa:- comprobar(es_herbivoro), comprobar(vive_en_bosques), comprobar(es_un_mamifero), comprobar(metamorfosis).
venado:- comprobar(es_herbivoro), comprobar(viven_en_sabana), comprobar(es_un_mamifero), cuernos.
elefante:- comprobar(es_herbivoro), comprobar(viven_en_sabana), comprobar(es_un_mamifero), marfil.
rana:- comprobar(es_omnivoro), comprobar(vive_en_rios), comprobar(salta), comprobar(es_un_anfibio).
pato:- comprobar(es_omnivoro), comprobar(vive_en_rios), comprobar(graznan), comprobar(es_un_ave).
gallo:- comprobar(es_omnivoro), comprobar(viven_en_granjas), comprobar(es_un_ave), comprobar(cacaraquean).
mono:- comprobar(es_omnivoro), comprobar(viven_en_selvas), comprobar(es_un_mamifero), cola.

nada:- comprobar(puede_nadar).
piel:- comprobar(puede_cambiar_de_piel).
cola:- comprobar(pueden_colgar_de_su_cola).
cuernos:- comprobar(tienen_grandes_cuernos).
marfil:- comprobar(tiene_colmillos_de_marfil).

comprobar(Atributo):- 
(satisface(Atributo)-> true;
(no_satisface(Atributo)-> fail;
hacer_pregunta(Atributo))).

hacer_pregunta(Pregunta):- write('¿El animal cumple con esta caracteristica?: '),
nl,
write(Pregunta),
nl,write('s/n'),
read(Respuesta),
( (Respuesta == s)
-> assert(satisface(Pregunta)) ;
assert(no_satisface(Pregunta)), fail).

:- dynamic satisface/1,no_satisface/1,es/1,comprobar/1.

borrar :- retract(satisface(_)),fail.
borrar :- retract(no_satisface(_)),fail.
borrar. 