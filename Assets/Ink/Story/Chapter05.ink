=== chapter_05 ===

# hide:all
# bg:black
# speaker:hide
#music:normal

CAPÍTULO 5

A la mañana siguiente…

Te despiertas antes de que suene la alarma.

Raro.

Normalmente no te levantarías tan pronto.

Te quedas unos segundos mirando el techo.

En silencio.

Pensando en nada.

O en demasiadas cosas.

Tu estómago hace un pequeño ruido.

Otra vez.

Suspiras.

# speaker:{protagonistName}

—Genial.

# speaker:hide

Te levantas sin prisa.

Te preparas y sales hacia clase.


# bg:entrance

El campus está más lleno que ayer.

Demasiada gente.

Demasiado ruido.

Caminas esquivando grupos hasta llegar al edificio.

Y justo antes de entrar…

# dante:green_shirt:smile
# speaker:Dante

—Buenos días, ladrona de bocadillos.

# speaker:{protagonistName}

—Buenos días, vendedor de humo.

# dante:green_shirt:shy
# speaker:Dante

—Vaya, eso me ha dolido.

# speaker:{protagonistName}

—No lo suficiente.

# dante:green_shirt:interessed
# speaker:hide

Dante se acerca a ti.
# speaker:Dante
—¿Has pensado en mí?

# speaker:{protagonistName}

—No.

# dante:green_shirt:smile
# speaker:Dante

—Yo sí.

# speaker:{protagonistName}

—No me sorprende.

# dante:green_shirt:smile
# speaker:Dante

Dante sonríe.

—Hoy estás más simpática.

# speaker:{protagonistName}

—No.

# cael:black:angry
# speaker:Cael

—¿Otra vez tú?

# speaker:hide

Cael aparece por detrás.

Mirando a Dante con cara de pocos amigos.

# cael:black:very_angry
# speaker:Cael

—¿Te pagan por aparecer donde estamos o es vocación?

# dante:green_shirt:smile
# speaker:Dante

—Es destino.

# cael:black:angry
# speaker:Cael

—Mis cojones.

# evan:casual:thinking
# speaker:Evan

—He llegado tarde porque estaba a punto de pasar un nivel...

# speaker:hide

Levanta la vista.

# evan:casual:surprised
# speaker:Evan

—Ah.

# evan:casual:smile
# speaker:Evan

—Reunión otra vez.

# dante:green_shirt:smile
# speaker:Dante

—Esto ya parece un evento diario.

# cael:black:neutral
# speaker:Cael

—No lo es.

# evan:casual:thinking
# speaker:Evan

—Lo es un poco.


# speaker:hide

Os quedáis los cuatro frente a la entrada.

Un momento raro.

Como si nadie tuviera muy claro por qué estáis ahí.


# speaker:hide

+ [Saludar a Evan.]
    ~ evanAffinity += 1
    -> chapter_05_choice_evan
+ [Pullita a Cael.]
    ~ caelAffinity += 1
    -> chapter_05_choice_cael

+ [Entrar y dar hombrazo a Dante.]
    ~ danteAffinity += 1
    -> chapter_05_choice_dante


=== chapter_05_choice_evan ===

# speaker:{protagonistName}

—Hola, Evan.

# evan:casual:surprised
# speaker:Evan

—Ah, hola.

# speaker:hide

Se le nota un poco sorprendido.

# evan:casual:thinking
# speaker:Evan

—No me esperaba que me saludaras primero.

# dante:green_shirt:upset
# speaker:Dante

—Vaya, me duele.

# cael:black:neutral
# speaker:Cael

—Enhorabuena. Has subido de nivel social.

# evan:casual:thinking
# speaker:Evan

—No sé si eso funciona así.

# cael:black:neutral
# speaker:Cael

—Déjalo, sí funciona.

# evan:casual:smile
# speaker:hide

Evan sonríe un poco.

-> chapter_05_after_choice_1


=== chapter_05_choice_cael ===

# speaker:{protagonistName}

—¿Siempre estás de mal humor o solo por las mañanas?

# cael:black:smile
# speaker:Cael

—Siempre.

# speaker:{protagonistName}

—Tiene sentido.
# cael:black:neutral
# dante:green_shirt:smile
# speaker:hide

Dante se ríe.

# dante:green_shirt:smile
# speaker:Dante

—Qué conexión más bonita.

# cael:black:angry
# speaker:Cael

—Cállate.

# evan:casual:thinking
# speaker:Evan

—Técnicamente no parece enfadado ahora mismo...

# cael:black:angry
# speaker:Cael

—Evan.

# evan:casual:relief
# speaker:Evan

—Sí.

# cael:black:very_angry
# speaker:Cael

—Para.

# evan:casual:relief
# speaker:Evan

—Vale.

# cael:black:neutral
# speaker:hide

Cael te mira otra vez.

Ligeramente menos seco.

-> chapter_05_after_choice_1


=== chapter_05_choice_dante ===

# speaker:hide

Pasas de largo como si no hubiera dicho nada.

# dante:green_shirt:surprised
# speaker:Dante

—…

# dante:green_shirt:upset
# speaker:Dante

—Eso ha sido personal.

# cael:black:happy
# speaker:Cael

—Te lo has ganado.

# evan:casual:thinking
# speaker:Evan

—Tiene sentido.

# dante:green_shirt:interested
# speaker:Dante

—Vale, ahora tengo más interés.

# cael:black:neutral
# speaker:Cael

—Qué sorpresa.

# dante:green_shirt:smile
# speaker:Dante

—Me gustan los retos.

-> chapter_05_after_choice_1


=== chapter_05_after_choice_1 ===

# evan:casual:thinking
# speaker:Evan

—Por cierto.

—Hoy tengo programación otra vez.

# cael:black:neutral
# speaker:Cael

—Qué sorpresa.

# evan:casual:thinking
# speaker:Evan

—Pero el profe se ha puesto a hablar de ética en la inteligencia artificial.

# dante:green_shirt:asking
# speaker:Dante

—¿Ética?

# evan:casual:thinking
# speaker:Evan

—Sí.

# dante:green_shirt:smile
# speaker:Dante

—Eso no te pega.

# evan:casual:asking
# speaker:Evan

—¿Por qué?

# dante:green_shirt:smile
# speaker:Dante

—Porque tú eres más de hablar con máquinas que con personas.

# evan:casual:surprised
# speaker:hide

Evan parpadea.

# evan:casual:thinking
# speaker:Evan

—Eso no es del todo incorrecto.

# cael:black:neutral
# speaker:Cael

—Al menos él tiene algo de contenido.

# dante:green_shirt:upset
# speaker:Dante

—Oye, yo también tengo contenido.

# cael:black:neutral
# speaker:Cael

—Sí, pero está vacío.

# evan:casual:thinking
# speaker:Evan

—Técnicamente el concepto de “vacío” es relativo...

# cael:black:angry
# speaker:Cael

—Evan, no empieces.

# evan:casual:relief
# speaker:Evan

—Vale.


# bg:corridor
# speaker:hide

Entráis al edificio.

Los pasillos están llenos.

Os movéis juntos casi sin daros cuenta.

Como si ya fuera algo habitual.

Lo cual es raro.

Porque no sois un grupo.

No exactamente.


# dante:green_shirt:asking
# speaker:Dante

—Oye.

# speaker:hide

Dante habla de repente.

# dante:green_shirt:interested
# speaker:Dante

—¿Comemos juntos luego?

# cael:black:neutral
# speaker:Cael

—No.

# dante:green_shirt:upset
# speaker:Dante

—No te he preguntado a ti.

# cael:black:neutral
# speaker:Cael

—Te contesto igual.

# evan:casual:thinking
# speaker:Evan

—Yo podría.

# cael:black:angry
# speaker:Cael

—Tú no ayudas.

# dante:green_shirt:interested
# speaker:Dante

—¿Y tú?


# speaker:hide

+ [Vale.]
    ~ evanAffinity += 1
    -> chapter_05_lunch_yes

+ [Depende.]
    ~ caelAffinity += 1
    -> chapter_05_lunch_depends

+ [Paso.]
    ~ danteAffinity += 1
    -> chapter_05_lunch_no


=== chapter_05_lunch_yes ===

# speaker:{protagonistName}

—Vale.

-> chapter_05_after_lunch_choice


=== chapter_05_lunch_depends ===

# speaker:{protagonistName}

—Depende.

-> chapter_05_after_lunch_choice


=== chapter_05_lunch_no ===

# speaker:{protagonistName}

—Paso.

-> chapter_05_after_lunch_choice


=== chapter_05_after_lunch_choice ===

# sfx:bell
# speaker:hide

RIIIIING.

# cael:black:upset
# speaker:Cael

—Genial. Clase.

# dante:green_shirt:upset
# speaker:Dante

—La parte más aburrida del día.

# evan:casual:thinking
# speaker:Evan

—Eso depende del punto de vista.


# speaker:hide
# hide:all
Os separáis para ir a vuestras clases.

Pero mientras te alejas…

No puedes evitar pensar en algo.

Ayer no los conocías.

Hoy…

Sigues cruzándote con ellos constantemente.

Demasiado.


# bg:class
# speaker:hide

Las horas pasan lentas.

Otra vez.

# sfx:hungry
Tu estómago vuelve a quejarse a mitad de clase.

Intentas ignorarlo.

No funciona.

Miras por la ventana.

Pensando.

Imaginando.

Distrayéndote.


# sfx:bell
# speaker:hide

RIIIIING.

Hora de salir.


# bg:corridor

Sales al pasillo.

Y como si fuera inevitable…
# dante:green_shirt:smile
# evan:casual:smile
# cael:black:neutral

Los ves otra vez.

Los tres.

Como si te estuvieran esperando.

O como si simplemente…

Siempre estuvieran ahí.


# dante:green_shirt:smile
# speaker:Dante

—Mira quién aparece.

# cael:black:neutral
# speaker:hide

Cael suspira.

# evan:casual:smile
# speaker:Evan

—Hola.

# speaker:hide

Te acercas.

# sfx:hungy
Tu estómago vuelve a hacer ruido.

# dante:green_shirt:smile
# speaker:Dante

—Creo que alguien tiene hambre.

# speaker:{protagonistName}

—Siempre.

# cael:black:thinking
# speaker:hide

Cael te mira un segundo.

# evan:casual:thinking
# speaker:hide

Evan también.

Pero ninguno dice nada raro.

Para ellos es normal.


+ [Ir a comer con los tres.]
    -> chapter_05_final_group

+ [Acercarte más a Evan.]
    ~ evanAffinity += 1
    -> chapter_05_final_evan

+ [Ir con Cael.]
    ~ caelAffinity += 1
    -> chapter_05_final_cael

+ [Quedarte con Dante.]
    ~ danteAffinity += 1
    -> chapter_05_final_dante


=== chapter_05_final_group ===

# speaker:{protagonistName}

—Vamos todos.

# dante:green_shirt:smile
# speaker:Dante

—La mejor opción.

# cael:black:upset
# speaker:Cael

—O la peor.

# evan:casual:thinking
# speaker:Evan

—Es eficiente.

# cael:black:asking
# speaker:Cael

—¿Qué tiene de eficiente comer?

# evan:casual:thinking
# speaker:Evan

—Optimiza el tiempo social.

# cael:black:neutral
# speaker:Cael

—Eres raro.

# evan:casual:smile
# speaker:Evan

—Lo sé.

# speaker:hide

Empiezan a caminar los tres contigo.

# hide:all
# endchapter:chapter_06
-> DONE


=== chapter_05_final_evan ===

# speaker:hide

Te acercas un poco a Evan.

# speaker:{protagonistName}

—¿Vienes?

# evan:casual:surprised
# speaker:Evan

—Ah… sí, claro.

# dante:green_shirt:smile
# speaker:Dante

—Vaya, tenemos favorito.

# cael:black:angry
# speaker:Cael

—Cállate.

# evan:casual:shy
# speaker:Evan

—Podríamos ir a ver el menú antes…

Hay menos gente ahora.

# cael:black:neutral
# speaker:Cael

—Haz lo que quieras.

# dante:green_shirt:smile
# speaker:Dante

—Luego nos vemos.

# evan:casual:smile
# speaker:hide

Evan asiente y empieza a caminar contigo.

Los otros dos se quedan atrás.

# hide:all
# endchapter:chapter_06_evan
-> DONE


=== chapter_05_final_cael ===

# speaker:hide

Te colocas al lado de Cael.

# speaker:{protagonistName}

—Vamos.

# cael:black:surprised
# speaker:Cael

—Vale.

# dante:green_shirt:smile
# speaker:Dante

—Interesante.

# cael:black:angry
# speaker:Cael

—Cierra la boca.

# evan:casual:thinking
# speaker:Evan

—Yo iré luego.

# cael:black:neutral
# speaker:Cael

—Claro.

# speaker:hide

Sin mirar atrás, Cael empieza a caminar contigo.

Dejando a los otros dos detrás.

# hide:all
# endchapter:chapter_06_cael
-> DONE


=== chapter_05_final_dante ===

# speaker:hide

Te quedas al lado de Dante.

# speaker:{protagonistName}

—¿Vamos?

# dante:green_shirt:smile
# speaker:Dante

—Siempre.

# cael:black:angry
# speaker:hide

Cael pone cara de asco.

# cael:black:neutral
# speaker:Cael

—Paso.

# dante:green_shirt:smile
# speaker:Dante

—Qué sorpresa.

# evan:casual:thinking
# speaker:Evan

—Creo que voy con Cael.

# dante:green_shirt:smile
# speaker:Dante

—Perfecto.

# speaker:hide

Dante empieza a caminar contigo, relajado.

Los otros dos se quedan atrás.

# hide:all
# endchapter:chapter_06_dante
-> DONE