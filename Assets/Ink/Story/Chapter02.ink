=== chapter_02 ===

# hide:all
# bg:class
# speaker:hide
#music:coquette

CAPÍTULO 2


Las clases de la tarde pasan lentas.

Demasiado lentas.

Intentas prestar atención a la explicación del profesor de biología molecular… 

pero tu mente vuelve una y otra vez al patio.

Al chico de marketing.

Al emo gruñón.

Y al raro de la bebida de aloe vera.

Suspiras.

No sabes por qué te molestan tanto.

Ni siquiera te importan.

Probablemente…

# sfx:bell

Riiiiing.

Por fin.

Guardas tus cosas con calma y sales del aula.

# bg:corridor

# speaker:hide

El pasillo está lleno de estudiantes.

Ruido.

Demasiada gente.

Caminas hacia la salida del edificio cuando escuchas una voz.

# speaker:???

—Eh! {protagonistName} !.

# speaker:hide

Te giras.

# cael:black:neutral
# evan:casual:smile

Son Cael y Evan.

Evan levanta la mano para saludarte.

Cael está apoyado contra la pared, mirando su móvil.

# evan:casual:happy_shy
# speaker:Evan

—Nos acordábamos de tu nombre.

# cael:black:neutral
# speaker:Cael

—Un logro impresionante.

# speaker:{protagonistName}

—¿Qué hacéis aquí?

# evan:casual:thinking
# speaker:Evan

—Esperar a que terminen las clases.

# cael:black:upset
# speaker:Cael

—Y evitar a Dante.

# speaker:{protagonistName}

—¿Tanto lo odiáis?

# evan:casual:relief
# speaker:Evan

—No.

# cael:black:very_angry
# speaker:Cael

—Yo sí.

# evan:casual:thinking
# speaker:Evan

—Es… complicado.

# speaker:hide

Cael guarda el móvil y te mira.

# cael:black:thinking
# speaker:Cael

—Es como una enfermedad.

# speaker:???

—No soy una enfermedad.

# speaker:hide

Una voz detrás.

Los tres os giráis.

# dante:green_shirt:smile

Por supuesto.

Dante sonríe como si acabara de hacer una entrada triunfal.

# dante:green_shirt:neutral
# speaker:Dante

—Vaya, vaya…

—Mi persona favorita del campus.

# speaker:hide

Te señala.

# dante:green_shirt:interessed
# speaker:Dante

—La chica que roba bocadillos.

# speaker:{protagonistName}

—Solo fué uno.

# dante:green_shirt:thinking
# speaker:Dante

—Los crímenes empiezan así.

# speaker:hide

Cael se pasa una mano por el pelo.

# cael:black:angry
# speaker:Cael

—¿Nos estabas siguiendo?

# dante:green_shirt:neutral
# speaker:Dante

—No.

# speaker:hide

Hace una pausa.

# dante:green_shirt:shy_happy
# speaker:Dante

—Quizá.

# evan:casual:surprised
# speaker:Evan

—Eso es un poco raro.

# dante:green_shirt:smile
# speaker:Dante

—Lo dice el que bebe plantas.

# evan:casual:upset
# speaker:Evan

—Es aloe vera.

# dante:green_shirt:asking
# speaker:Dante

—Es una planta.

# speaker:hide

Suspiras.

Este grupo es agotador.

Pero curiosamente…

No te vas.


// ELECCIÓN 1

# speaker:hide

¿Qué dices?

+ [¿Siempre sois así?]
    ~ evanAffinity += 1
    -> chapter_02_after_choice_1

+ [Empiezo a entender por qué Cael te odia.]
    ~ caelAffinity += 1
    -> chapter_02_after_choice_1

+ [Marketing… filosofía… mecánica… vaya grupo raro.]
    ~ danteAffinity += 1
    -> chapter_02_after_choice_1


=== chapter_02_after_choice_1 ===

# dante:green_shirt:interessed
# speaker:Dante

—Eh, oye.

# speaker:hide

Se acerca un poco.

# dante:green_shirt:smile
# speaker:Dante

—Ayer no me diste tu número.

# speaker:{protagonistName}

—Ni hoy tampoco.

# dante:green_shirt:shy_happy
# speaker:Dante

—Indirecta muy sutil.

# cael:black:angry
# speaker:Cael

—Tío, déjala en paz.

# dante:green_shirt:upset
# speaker:Dante

—Estoy manteniendo una conversación.

# cael:black:very_angry
# speaker:Cael

—Estás intentando ligar.

# dante:green_shirt:asking
# speaker:Dante

—Es lo mismo.

# evan:casual:thinking
# speaker:Evan

—Técnicamente no lo es.

# cael:black:angry
# speaker:Cael

—No empieces con filosofía ahora.

# evan:casual:asking
# speaker:Evan

—Solo digo que conceptualmente…

# cael:black:very_angry
# speaker:Cael

—EVAN.

# evan:casual:relief
# speaker:Evan

—Vale.

# speaker:hide
# cael:black:neutral
# evan:casual:neutral
# dante:green_shirt:neutral


Te apoyas contra la pared observándolos.

Son… curiosos.

Dante vuelve a mirarte.

# dante:green_shirt:interessed
# speaker:Dante

—Por cierto.

# speaker:{protagonistName}

—¿Sí?

# dante:green_shirt:thinking
# speaker:Dante

—Nunca te pregunté algo importante.

# speaker:{protagonistName}

—¿Qué?

# dante:green_shirt:asking
# speaker:Dante

—¿Qué te gusta comer?

# cael:black:asking
# speaker:Cael

—¿En serio?

# dante:green_shirt:neutral
# speaker:Dante

—Es una pregunta normal.

# cael:black:very_angry
# speaker:Cael

—No cuando la haces así.

# evan:casual:thinking
# speaker:Evan

—Bueno… ahora tengo curiosidad yo también.

# speaker:hide

Te quedas pensándolo.

Por un momento.

Tu estómago hace un pequeño ruido.

No has merendado suficiente.

Ni de lejos.

Miras a los tres chicos.


// ELECCIÓN 2

# speaker:hide

¿Qué respondes?

+ [Carne.]
    ~ danteAffinity += 1
    -> chapter_02_after_choice_2

+ [Cualquier cosa si tengo hambre.]
    ~ caelAffinity += 1
    -> chapter_02_after_choice_2

+ [Depende del día.]
    ~ evanAffinity += 1
    -> chapter_02_after_choice_2


=== chapter_02_after_choice_2 ===

# evan:casual:thinking
# speaker:Evan

—Eso es una respuesta bastante filosófica.

# cael:black:neutral
# speaker:Cael

—No lo es.

# evan:casual:smile
# speaker:Evan

—Todo puede ser filosófico.

# cael:black:angry
# speaker:Cael

—No empieces.

# dante:green_shirt:interessed
# speaker:Dante

—Entonces…

# speaker:hide

Dante se inclina hacia ti otra vez.

# dante:green_shirt:asking
# speaker:Dante

—¿Te apetece algo de comer ahora?

# cael:black:surprised
# speaker:Cael

—¿Estás intentando invitarla?

# dante:green_shirt:smile
# speaker:Dante

—Obviamente.

# cael:black:neutral
# speaker:Cael

—Eres predecible.

# dante:green_shirt:shy_happy
# speaker:Dante

—Funciona.

# evan:casual:asking
# speaker:Evan

—La cafetería sigue abierta.

# sfx:hungry

# speaker:hide

Tu estómago vuelve a gruñir.

Un poco más fuerte.

Los tres lo escuchan.

# dante:green_shirt:smile
# speaker:Dante

—Creo que esa fue la respuesta.


// ELECCIÓN 3

# speaker:hide

¿Qué haces?

+ [Aceptar ir a la cafetería con ellos.]
    ~ danteAffinity += 1
    ~ caelAffinity += 1
    ~ evanAffinity += 1
    -> chapter_02_end


=== chapter_02_end ===

# bg:cafeteria

# speaker:hide

Mientras decides…

No puedes evitar pensar en algo.

Quizá esta universidad no sea tan aburrida.

Después de todo…

Hay muchas cosas interesantes que probar.

# hide:all

# endchapter:chapter_03
-> DONE