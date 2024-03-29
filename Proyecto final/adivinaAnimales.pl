:-use_module(library(pce)).
:-use_module(library(pce_style_item)).
:- dynamic color/2.


inicio:-
	new(Menu, dialog('Adivina quien animales', size(1000,800))),
	new(L,label(nombre,'ADIVINA QUIEN: ANIMALES',font('century','gothic',10))),
	new(A,label(nombre,'Sergio Jiménez Cano')),
	new(@texto,label(nombre,'Responde las preguntas para adivinar el animal')),
	new(@respl,label(nombre,'')),
	new(Salir,button('SALIR',and(message(Menu, destroy),message(Menu,free)))),
	new(@boton,button('realizar test',message(@prolog,botones))),

	send(Menu,append(L)),new(@btncarrera,button('?')),
	send(Menu,display,L,point(125,20)),
	send(Menu,display,A,point(80,360)),
	send(Menu,display,@boton,point(100,150)),
	send(Menu,display,@texto,point(20,100)),
	send(Menu,display,Salir,point(20,400)),
	send(Menu,display,@respl,point(20,130)),
	send(Menu,open_centered).


animales('El animal es un Tiburon 🦈'):-tiburon,!.

animales('El animal es un Delfin 🐬'):-delfin,!.

animales('El animal es una ballena 🐳'):-ballena,!.

animales('El animal es una Vibora 🐍'):-vibora,!.

animales('El animal es un cocodrilo 🐊'):-cocodrilo,!.

animales('El animal es un Gato 😺'):-gato,!.

animales('El animal es un Perro 🐶'):-perro,!.

animales('El animal es una Lagartija 🦎'):-lagartija,!.

animales('El animal es un pinguino 🐧' ):-pinguino,!.

animales('El animal es un León 🦁' ):-leon,!.

animales('El animal es una Araña 🕷️'):-araña,!.

animales('El animal es una Tortuga 🐢 ' ):-tortuga,!.

animales('El animal es un Conejo 🐇'):-conejo,!.

animales('El animal es una Mariposa 🦋'):-mariposa,!.

animales('El animal es un Venado 🦌'):-venado,!.

animales('El animal es un Elefante 🐘'):-elefante,!.

animales('El animal es una Rana 🐸'):-rana,!.

animales('El animal es un Pato 🦆'):-pato,!.

animales('El animal es un Gallo 🐓'):-gallo,!.

animales('El animal es Mono 🐒'):-mono,!.


animales('Sin resultados, usted no dio la informacion necesaria o suficiente :(
ERROR p560c4!').


tiburon:- stiburon,
	pregunta('¿Tiene dientes afilados?'),
	pregunta('¿Se cree que estos animales no contraen el cancer?'),
	pregunta('¿Estos animales tienen cartilagos en lugar de huesos?').

delfin:- sdelfin,
        pregunta('¿Tienen un orificio en la cabeza que les permite respirar?'),
	pregunta('¿En ocaciones ayudan a los pescadores?'),
	pregunta('¿Se caracterizan por nadar ‘cabalgando’ las olas?').

ballena:- sballena,
	pregunta('¿Es la especie mas grande el planeta?'),
        pregunta('¿Este animal aparece en la novela Moby-dick?');
	pregunta('¿Hechan un gran chorro de agua cuando respiran?').

vibora:- svibora,
	pregunta('¿Cambian de piel?'),
	pregunta('¿Son animales venenosos?');
	pregunta('¿Son animales de sagre fria?').

cocodrilo:- scocodrilo,
	pregunta('¿Viven en pantanos y rios?'),
	pregunta('¿Son carnivoros?'),
	pregunta('¿Tienen una piel muy gruesa?').

gato:- sgato,
	pregunta('¿Cazan ratones?'),
	pregunta('¿Suelen dormir todo el dia?'),
	pregunta('¿Ronronean').

perro:- sperro,
	pregunta('¿Son conocidos como el mejor amigo del hombre?'),
	pregunta('¿Tienen el olfato muy desarrollado?'),
	pregunta('¿SU vista solo puede distinguir el blanco y negro?').

lagartija:- slagartija,
	pregunta('¿Solo comen insectos y arañas?'),
	pregunta('¿Son animales muy pequeños?'),
	pregunta('Les gusta asolearse').

pinguino:- spinguino,
	pregunta('¿Sus principales depredadores son orcas y focas?'),
	pregunta('¿Se alimentas principalmente de crustacios y peces?'),
	pregunta('¿Tienen alas pero no puede volar?').

leon:- sleon,
	pregunta('¿Viven en la sabana?'),
	pregunta('¿Tienen una gran melena?'),
	pregunta('¿Suelen vivir en manadas?').

araña:- saraña,
	pregunta('¿Viven en rincones y jardines?'),
	pregunta('¿Es pariente del hombre araña?'),
	pregunta('¿Pueden hacer telaraña?').

tortuga:- stortuga,
	pregunta('¿Pueden vivir mas de 100 años?'),
	pregunta('¿Suelen esconderse en su caparazon?'),
	pregunta('¿Tienen aletas?').

conejo:- sconejo,
	pregunta('¿Pueden saltar?'),
	pregunta('¿Tienen un pelaje muy espeso y peludo?'),
	pregunta('¿Tienen grande orejas?').

mariposa:- smariposa,
	pregunta('¿Existe una gran diversidad de esta especie?'),
	pregunta('¿Son artropodos?'),
	pregunta('¿Suelen vivir donde existe mucha vegetacion?').

venado:- svenado,
	pregunta('¿Son animales hervivoros'),
	pregunta('¿Viven en los bosques?'),
	pregunta('¿Se llama bambi? xd').

elefante:- selefante,
	pregunta('¿Poseen una gran trompa?'),
	pregunta('¿Tienen grande orejas?'),
	pregunta('¿Tienen piel muy gruesa?').

rana:- srana,
	pregunta('¿Sus patas traseras son mas largas que las delanteras?'),
	pregunta('¿Suelen saltar mucho?'),
	pregunta('¿Pierden su cola durante la metamorfosis?').

pato:- spato,
	pregunta('¿Su plumaje principalmente es de color blanco?'),
	pregunta('¿Tienen una membrana en sus patas que les permite nadar mas rapido?'),
	pregunta('¿Su pico es naranja?').

gallo:- sgallo,
	pregunta('¿Viven principalmente en granjas?'),
	pregunta('¿Tienen alas pero no pueden volar?'),
	pregunta('¿Se despiertan muy temprano?').

mono:- smono,
	pregunta('¿Tienen gran similitud con el humano?'),
	pregunta('¿Viven el zonas calidas y selvaticas?'),
	pregunta('¿Son animales omnivoros?').



stiburon:-pregunta('¿Es el animal mas peligroso del oceano?'),!.
sdelfin:-pregunta('¿Es un animal muy inteligente y amistoso?'),!.
sballena:-pregunta('¿Se alimenta principalmente de planton?'),!.
svibora:-pregunta('¿Este animal se arrastra?'),!.
scocodrilo:-pregunta('¿Son animales muy peligrosos?'),!.
sgato:-pregunta('¿Maulla?'),!.
sperro:-pregunta('¿Ladra?'),!.
slagartija:-pregunta('¿Puede cortar su cola para escapar?'),!.
spinguino:-pregunta('¿Vive en el artico?'),!.
sleon:-pregunta('¿Es conocido como el rey de la selva?'),!.
saraña:-pregunta('¿Tiene 8 patas y algunas son venenosas?'),!.
stortuga:-pregunta('¿Tiene caparazon y son muy lentas?'),!.
sconejo:-pregunta('¿Su alimento preferido son las zanahorias?'),!.
smariposa:-pregunta('¿Pueden hacer la metamorfosis?'),!.
svenado:-pregunta('¿Tienen grandes cuernos?'),!.
selefante:-pregunta('¿Tienen colmillos de marfil?'),!.
srana:-pregunta('¿Son anfibios?'),!.
spato:-pregunta('¿Puede graznar?'),!.
sgallo:-pregunta('¿Cacaraquea?'),!.
smono:-pregunta('¿Puede colgar de los arboles con su cola?'),!.



:-dynamic si/1,no/1.
preguntar(Problema):- new(Di,dialog('Animales')),
     new(L2,label(texto,'Responde las siguientes preguntas')),
     new(La,label(prob,Problema)),
     new(B1,button(si,and(message(Di,return,si)))),
     new(B2,button(no,and(message(Di,return,no)))),

         send(Di,append(L2)),
	 send(Di,append(La)),
	 send(Di,append(B1)),
	 send(Di,append(B2)),

	 send(Di,default_button,si),
	 send(Di,open_centered),get(Di,confirm,Answer),
	 write(Answer),send(Di,destroy),
	 ((Answer==si)->assert(si(Problema));
	 assert(no(Problema)),fail).


pregunta(S):-(si(S)->true; (no(S)->fail; preguntar(S))).
limpiar :- retract(si(_)),fail.
limpiar :- retract(no(_)),fail.
limpiar.


botones :- lim,
	send(@boton,free),
	send(@btncarrera,free),
	animales(Animal),
	send(@texto,selection(' ')),
	send(@respl,selection(Animal)),
	new(@boton,button('inicia procedimiento',message(@prolog,botones))),
        send(Menu,display,@boton,point(40,50)),
        send(Menu,display,@btncarrera,point(20,50)),
limpiar.
lim :- send(@respl, selection('')).
