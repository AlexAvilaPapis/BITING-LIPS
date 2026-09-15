=== chapter_03 ===
#music:normal

# hide:all
# bg:cafeteria

CAPITULO 3

LA CAFETERÍA

# speaker:hide

El grupo termina caminando hacia la cafetería del campus.

No sabes exactamente por qué sigues con ellos.

Quizá porque tienes hambre.

Quizá porque son entretenidos.

Quizá porque…

Bueno.

Mejor no pensarlo demasiado.

La cafetería está medio vacía a estas horas.

Perfecto.

Menos gente.

Menos ruido.

Te acercas al mostrador mientras los tres discuten detrás.

# cael:black:angry
# speaker:Cael

—Te digo que ibas tú primero.

# evan:casual:upset
# speaker:Evan

—¡Pero si yo no quería nada!

# cael:black:neutral
# speaker:Cael

—Eso dijiste antes de comprar una bebida.

# evan:casual:asking
# speaker:Evan

—Porque tenía sed.

# cael:black:thinking
# speaker:Cael

—Siempre tienes sed.

# evan:casual:thinking
# speaker:Evan

—Eso no es un argumento.

# dante:green_shirt:upset
# speaker:hide

Dante suspira.

# dante:green_shirt:asking
# speaker:Dante

—¿Podemos centrarnos en lo importante?

# cael:black:neutral
# speaker:Cael

—¿Qué?

# dante:green_shirt:interessed
# speaker:hide

Dante te señala.

# speaker:Dante

—Ella.

# cael:black:very_angry
# speaker:hide

Cael rueda los ojos.

# speaker:Cael

—Eres insoportable.

# hide:all

# speaker:hide

Pides algo de comer.

Bastante más de lo que pensabas.

Cuando vuelves a la mesa con la bandeja…

# cael:black:surprised
# evan:casual:surprised
# dante:green_shirt:surprised

Los tres se quedan mirando.

Hay silencio unos segundos.

Evan parpadea.

# evan:casual:asking
# speaker:Evan

—Eso es… mucha comida.

# speaker:{protagonistName}

—Tengo hambre.

# cael:black:neutral
# speaker:hide

Cael se recuesta en la silla.

# cael:black:smile
# speaker:Cael

—Respeto eso.

# dante:green_shirt:smile
# speaker:Dante

—Me gusta una chica que sabe comer.

# speaker:hide

Te sientas.

Empiezas a comer.

Rápido.

Muy rápido.

Quizá demasiado rápido.

Pero nadie dice nada.

Evan parece más interesado en observar.

# evan:casual:thinking
# speaker:Evan

—Biología…

# speaker:{protagonistName}

—Sí.

# evan:casual:asking
# speaker:Evan

—Entonces… ¿quieres ser investigadora? ¿Doctora? ¿Algo así?

# speaker:hide

Te encoges de hombros.

# speaker:{protagonistName}

—Quiero terminar la carrera.

# cael:black:neutral
# speaker:Cael

—Objetivo sencillo.

# evan:casual:upset
# speaker:Evan

—No es sencillo.

# cael:black:thinking
# speaker:Cael

—Nada en la vida lo es.

# dante:green_shirt:interessed
# speaker:hide

Dante se inclina hacia delante.

# speaker:Dante

—Yo sí tengo un plan.

# cael:black:neutral
# speaker:Cael

—Sorpréndeme.

# dante:green_shirt:smile
# speaker:Dante

—Ser rico.

# cael:black:thinking
# speaker:Cael

—Qué ambicioso.

# dante:green_shirt:interessed
# speaker:Dante

—Marketing, cariño.

# cael:black:angry
# speaker:Cael

—No me llames cariño.

# dante:green_shirt:smile
# speaker:Dante

—No te lo decía a ti.


// ELECCIÓN 1

# speaker:hide

¿Qué dices sobre sus carreras?

+ [Al menos mecánica tiene utilidad.]
    ~ caelAffinity += 1
    -> chapter_03_after_choice_1

+ [Informática suena interesante.]
    ~ evanAffinity += 1
    -> chapter_03_after_choice_1

+ [Marketing suena complicado.]
    ~ danteAffinity += 1
    -> chapter_03_after_choice_1


=== chapter_03_after_choice_1 ===

# speaker:hide

Mientras hablan…

Sigues comiendo.

Hamburguesa.

Patatas.

Otro bocadillo.

Tu estómago por fin empieza a sentirse mejor.

Un poco.

Muy poco.

Miras a los tres chicos.

# evan:casual:asking
# speaker:Evan

—¿Estás bien?

# speaker:hide

Levantas la vista.

Es Evan.

# speaker:{protagonistName}

—Sí.

# evan:casual:thinking
# speaker:Evan

—Te has quedado mirando al vacío.

# speaker:{protagonistName}

—Estaba pensando.

# evan:casual:smile
# speaker:Evan

—Eso es territorio de filosofía.

# cael:black:thinking
# speaker:hide

Cael te mira.

# speaker:Cael

—Da miedo cuando la gente dice eso.

# speaker:{protagonistName}

—Lo dices como si no pensaras nunca.

# cael:black:neutral
# speaker:Cael

—Yo pienso cosas útiles.

# speaker:{protagonistName}

—¿Cómo qué?

# cael:black:thinking
# speaker:Cael

—Motores.

# dante:green_shirt:thinking
# speaker:hide

Dante se cruza de brazos.

# dante:green_shirt:interessed
# speaker:Dante

—Yo estoy pensando algo importante ahora mismo.

# cael:black:neutral
# speaker:Cael

—¿Qué?

# dante:green_shirt:smile
# speaker:Dante

—Que {protagonistName} todavía no me ha dado su número.

# speaker:hide

Suspiras.


// ELECCIÓN 2

# speaker:hide

¿Qué respondes?

+ [Eres insistente.]
    ~ danteAffinity += 1
    -> chapter_03_after_choice_2

+ [Ignóralo.]
    ~ caelAffinity += 1
    -> chapter_03_after_choice_2

+ [¿Para qué lo quieres?]
    ~ evanAffinity += 1
    -> chapter_03_after_choice_2


=== chapter_03_after_choice_2 ===

# dante:green_shirt:shy_happy
# speaker:Dante

—Es para invitarte a salir.

# cael:black:upset
# speaker:hide

Cael se pasa la mano por la cara.

# cael:black:very_angry
# speaker:Cael

—No puede evitarlo.

# dante:green_shirt:asking
# speaker:Dante

—¿Qué?

# cael:black:neutral
# speaker:Cael

—Eres un cliché.

# dante:green_shirt:smile
# speaker:Dante

—Un cliché guapo.

# cael:black:angry
# speaker:Cael

—Eso no mejora nada.

# evan:casual:thinking
# speaker:hide

Evan da otro sorbo a su bebida.

# speaker:Evan

—Esto es interesante desde un punto de vista social.

# cael:black:angry
# speaker:Cael

—Evan.

# evan:casual:relief
# speaker:Evan

—Sí.

# cael:black:very_angry
# speaker:Cael

—Cállate.

# evan:casual:upset
# speaker:Evan

—Vale.

# speaker:hide

Hay un momento de silencio.

Curiosamente cómodo.

Te das cuenta de algo extraño.

Normalmente la gente te aburre rápido.

Pero estos tres…

No.

Te apoyas en la silla.

# dante:green_shirt:shy_staring
# speaker:hide

Dante te mira.

# cael:black:thinking
# speaker:hide

Cael parece distraído.

# evan:casual:thinking
# speaker:hide

Evan está mirando algo en su móvil.

Quizá esta universidad…

No sea tan aburrida como pensabas.

Empiezas a tener sueño.

Quieres irte.


// ELECCIÓN FINAL DEL CAPÍTULO

# speaker:hide

¿Que hacer?

+ [Pedirle a Evan que me acompañe.]
    ~ evanAffinity += 2
    -> chapter_04_evan

+ [Pedirle a Cael que me acompañe.]
    ~ caelAffinity += 2
    -> chapter_04_cael

+ [No diré nada]
    ~ danteAffinity += 2
    -> chapter_04_dante
    

# endchapter:chapter_04
-> DONE