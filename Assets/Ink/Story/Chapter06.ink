=== chapter_06 ===
#music:coquette

# hide:all
# bg:cafeteria
# speaker:hide

CAPÍTULO 6 - COMES EN GRUPO


# speaker:{protagonistName}

—Vamos.

# speaker:hide

Empiezas a caminar sin pensarlo demasiado.

Los tres te siguen.

Como si fuera automático.


La cafetería está más llena que ayer.

Mucho más.

Ruido.

Gente.

Demasiada.


Frunces ligeramente el ceño.


# cael:black:thinking
# speaker:Cael

—¿Te molesta?


# speaker:{protagonistName}

—Un poco.


# cael:black:neutral
# speaker:Cael

—Normal.


# dante:green_shirt:smile
# speaker:Dante

—Tranquila, yo te protejo de la multitud.


# speaker:{protagonistName}

—Prefiero la multitud.


# dante:green_shirt:upset
# speaker:Dante

—Deja de hacerme daño…


# evan:casual:thinking
# speaker:Evan

—Podríamos sentarnos en una esquina.


# speaker:{protagonistName}

—Gracias.


# speaker:hide

Encontráis una mesa al fondo.

Más tranquila.

Te sientas.

Evan deja su móvil en la mesa.

Cael abre su Monster.

Dante se deja caer en la silla como si fuera suya.


# dante:green_shirt:asking
# speaker:Dante

—Vale.

—Pregunta importante.


# cael:black:neutral
# speaker:Cael

—No.


# dante:green_shirt:surprised
# speaker:Dante

—Ni la he hecho.


# cael:black:thinking
# speaker:Cael

—Da igual.


# evan:casual:thinking
# speaker:Evan

—Podría ser una buena pregunta.


# dante:green_shirt:smile
# speaker:Dante

—Gracias, Evan.


# evan:casual:smile
# speaker:Evan

—De nada.


# dante:green_shirt:interested
# speaker:Dante

—Si fueras una comida…

¿Cuál serías?


# speaker:hide

Silencio.


# cael:black:angry
# speaker:Cael

—Me voy.


# speaker:{protagonistName}

—Siéntate.


# speaker:hide

Cael se queda.

Te mira.


* [Algo caro.]
    ~ danteAffinity += 1
    -> chapter_06_group_food_a

* [Algo difícil de conseguir.]
    ~ evanAffinity += 1
    -> chapter_06_group_food_b

* [No lo sé.]
    ~ caelAffinity += 1
    -> chapter_06_group_food_c


=== chapter_06_group_food_a ===

# dante:green_shirt:smile
# speaker:Dante

—Lo sabía.


# speaker:{protagonistName}

—¿Por?


# dante:green_shirt:interested
# speaker:Dante

—Porque tienes pinta de ser un lujo.


# speaker:{protagonistName}

—Qué superficial.


# dante:green_shirt:smile
# speaker:Dante

—Pero efectivo.


# speaker:hide

Cael pone los ojos en blanco.

-> chapter_06_group_continue


=== chapter_06_group_food_b ===

# evan:casual:thinking
# speaker:Evan

—Tiene sentido.


# dante:green_shirt:smile
# speaker:Dante

—Eso suena a reto.


# cael:black:neutral
# speaker:Cael

—Todo te suena a reto.


# speaker:{protagonistName}

—Porque lo es.


-> chapter_06_group_continue


=== chapter_06_group_food_c ===

# cael:black:thinking
# speaker:Cael

—Es una pregunta complicada.


# dante:green_shirt:asking
# speaker:Dante

—No lo es.


# cael:black:neutral
# speaker:Cael

—Depende de cómo lo analices.


# dante:green_shirt:upset
# speaker:Dante

—No la analices.


# cael:black:thinking
# speaker:Cael

—Lo que tú digas.


-> chapter_06_group_continue


=== chapter_06_group_continue ===

# speaker:hide

Tu estómago vuelve a sonar.

Más fuerte esta vez.


# dante:green_shirt:smile
# speaker:Dante

—Eso ha sido bastante claro.


# speaker:{protagonistName}

—Voy a pedir comida.


# speaker:hide

Te levantas.


# evan:casual:asking
# speaker:Evan

—Voy contigo.


# dante:green_shirt:smile
# speaker:Dante

—Yo también.


# cael:black:very_angry
# speaker:Cael

—Ni de coña.

Nos vamos a quedar sin sitio.


# dante:green_shirt:asking
# speaker:Dante

—Pues ven tú también.


# cael:black:neutral
# speaker:Cael

—No.


# speaker:hide

Al final…

vais los cuatro.


Hacéis cola.

Otra vez.

Silencio incómodo.

Hasta que…


# cael:black:neutral
# speaker:Cael

—No te cueles.


# speaker:{protagonistName}

—No prometo nada.


# dante:green_shirt:smile
# speaker:Dante

—A mí me gustó cuando lo hiciste.


# speaker:{protagonistName}

—Ok.


# speaker:Dante

—Fue sexy.


# cael:black:angry
# speaker:Cael

—Cállate.


# evan:casual:thinking
# speaker:Evan

—Tienen tortilla.


# cael:black:thinking
# speaker:Cael

—Espero que no lleve cebolla.


# dante:green_shirt:angry
# speaker:Dante

—¡A LA TORTILLA DE PATATA SE LE PONE CEBOLLA!


# cael:black:very_angry
# speaker:Cael

—No.


# dante:green_shirt:very_angry
# speaker:Dante

—¡QUE SÍ!


# cael:black:very_angry
# speaker:Cael

—No.


# speaker:hide

Mientras esperáis…

Miras a la gente.

A vuestro alrededor.

Demasiadas personas.

Demasiado ruido.

Demasiado…

movimiento.


Tu mirada se detiene en alguien.

Un segundo.

Dos.

Tres.


No esperabas encontrarte con esa persona en ese momento.


Parpadeas.

Apartas la mirada.


# evan:casual:asking
# speaker:Evan

—¿Estás bien?


# speaker:{protagonistName}

—Sí.


# dante:green_shirt:thinking
# speaker:Dante

—Te has quedado congelada.


# speaker:{protagonistName}

—Estoy bien.


# cael:black:staring
# speaker:hide

Cael te mira.

No dice nada.

Pero no aparta la mirada.


* [Tengo mucha hambre.]
    ~ danteAffinity += 1
    -> chapter_06_group_reaction_a

* [Se me ha ido la cabeza.]
    ~ evanAffinity += 1
    -> chapter_06_group_reaction_b

* [¿Qué miras?]
    ~ caelAffinity += 1
    -> chapter_06_group_reaction_c


=== chapter_06_group_reaction_a ===

# dante:green_shirt:smile
# speaker:Dante
# cael:black:staring

—Eso explica muchas cosas.


-> chapter_06_group_after_reaction


=== chapter_06_group_reaction_b ===

# evan:casual:thinking
# speaker:Evan
# cael:black:staring

—Entiendo.


# speaker:hide

Aunque parece que sigue un poco preocupado.

-> chapter_06_group_after_reaction


=== chapter_06_group_reaction_c ===

# cael:black:surprised
# speaker:Cael

—Nada.


# speaker:{protagonistName}

—Claro.


# cael:black:neutral
# speaker:hide

Cael aparta la mirada.

-> chapter_06_group_after_reaction


=== chapter_06_group_after_reaction ===

# speaker:hide

Pedís la comida.

Volvéis a la mesa.

Te sientas.

Empiezas a comer.

Rápido.

Demasiado rápido.


# dante:green_shirt:surprised
# speaker:Dante

—Wow.


# evan:casual:surprised
# speaker:Evan

—Eso ha sido un speedrun.


# cael:black:staring
# speaker:hide

Cael te mira.

No dice nada.

Pero lo ha notado.


Silencio unos segundos.
# dante:green_shirt:neutral

Luego Dante sonríe.


# dante:green_shirt:asking
# speaker:Dante

—Vale.

Otra pregunta.


# cael:black:angry
# speaker:Cael

—No.


# dante:green_shirt:interested
# speaker:Dante

—¿A quién elegirías de nosotros tres?


# speaker:hide

Silencio.


# evan:casual:surprised
# speaker:hide

Evan se queda congelado.


# cael:black:angry
# speaker:Cael

—Eres imbécil.


# dante:green_shirt:neutral
# speaker:Dante

—Es una pregunta legítima.


# cael:black:very_angry
# speaker:Cael

—No lo es.


# dante:green_shirt:smile
# speaker:Dante

—Venga.


# speaker:hide

Los tres esperan tu respuesta.


Y por primera vez…

la decisión se siente importante.


No solo por ellos.


Sino por ti.


Por lo que quieres.


O por lo que necesitas.


* [Mirar a Evan.]
    ~ evanAffinity += 2
    # endchapter:chapter_06_evan
    -> DONE

* [Mirar a Cael.]
    ~ caelAffinity += 2
    # endchapter:chapter_06_cael
    -> DONE

* [A ti no.]
    ~ danteAffinity += 2
    # endchapter:chapter_06_dante
    -> DONE