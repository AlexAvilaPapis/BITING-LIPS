=== chapter_16 ===
# speaker:hide
#music:disco

# bg:room
CAPITULO 16


El sábado llega.

Y, contra todo pronóstico, nadie cancela.

Ni siquiera Cael.

Aunque lleva toda la semana diciendo que piensa hacerlo.

Después de tanto esperar, finalmente llega la tarde.

Y todavía no sabes qué ponerte.

Abres el armario.

Miras la ropa.

Cierras el armario.

Lo vuelves a abrir.

Nada.

Después de buscar durante demasiado tiempo, finalmente decides qué ponerte.

#input:outfit:cap16

Te vistes.

Te maquillas.

Compruebas tu aspecto una última vez en el espejo.

No está mal.

Definitivamente podría ser peor.

Coges tus cosas y sales de casa.
#bg:disco_outside
Llegas al sitio donde habéis quedado.

Y, por supuesto...

Las quejas empiezan inmediatamente.

# cael:monster:thinking_smoking
# speaker:Cael

—Todavía puedo irme.

# dante:black_polo:asking
# speaker:Dante

—No.

# cael:monster:thinking_smoking
# speaker:Cael

—Sí.

# dante:black_polo:smile
# speaker:Dante

—No.

# cael:monster:neutral_smoking
# speaker:Cael

—Sí.

# dante:black_polo:neutral
# speaker:Dante

—No.

# cael:monster:neutral_smoking
# speaker:Cael

—Sí.

# dante:black_polo:annoyed
# speaker:Dante

—Cállate.

# cael:monster:thinking_smoking
# speaker:Cael

—No.

# speaker:hide

Todo normal.

//ELOGIO DE LA ROPA

{
    -outfitChoice == "Outfit1":
        #cael:monster:smile
        #speaker:Cael
        ~ caelAffinity += 1

        —Joder, {protagonistName}, ¡quién diría que fuera del campus sabes vestir!
                #speaker:{protagonistName}

        —Joder, Cael, ¡quién diría que fuera del campus sabías decir más de tres palabras seguidas!

    - outfitChoice == "Outfit2":
        #dante:black_polo:smile
        #speaker:Dante
        ~ danteAffinity += 1

        —Por cierto... Un aplauso para {protagonistName}, por ser la mejor vestida de toda la discoteca.
        #speaker:{protagonistName}
        —Exageras
        #speaker:Dante
        —No lo hago
        —Diría incluso que te has vestido para mí
        #speaker:{protagonistName}
        —Qué desperdicio que tu ego se atribuya el mérito de mi esfuerzo

    - outfitChoice == "Outfit3":
        #evan:party:smile
        #speaker:Evan
        ~ evanAffinity += 1

        —¡Oh!  {protagonistName}... me gusta el estilo que tienes fuera de tu spawpoint.
         #speaker:{protagonistName}
        —¿Cuál se supone que es mi SpawnPoint?
        # speaker:hide
         #evan:party:shy
        Evan se sonroja mucho al pensar en lo que ha dicho
        #speaker:Evan
        —Bueno... me refería al campus... La  ropa que llevas hoy... que no estás en el campus...
         # speaker:hide
        Cambia rápido de tema        
}

# evan:party:neutral
# speaker:Evan

—¿Podemos entrar ya?

# dante:black_polo:smile
# speaker:Dante

—Evan tiene razón.

# cael:monster:neutral
# speaker:Cael

—Esto no va a acabar bien.

# speaker:{protagonistName}

—Probablemente no.

# speaker:hide

Y así empieza la noche.
#bg:disco

{
    - danteAffinity >= caelAffinity and danteAffinity >= evanAffinity:
        ~ route = "dante"
        ~ danteAffinity = 100
        -> chapter_16_dante

    - caelAffinity >= danteAffinity and caelAffinity >= evanAffinity:
        ~ route = "cael"
        ~ caelAffinity = 100
        -> chapter_16_cael

    - else:
        ~ route = "evan"
        ~ evanAffinity = 100
        -> chapter_16_evan
}


=== chapter_16_dante ===
# speaker:hide

La discoteca está bastante llena.

Demasiado llena para tu gusto.

Música alta.

Luces por todas partes.

Demasiada gente.

Demasiadas voces.

Nada más entrar ya te estás arrepintiendo un poco.

# cael:monster:annoyed
# speaker:Cael

—Me quiero ir.

# dante:black_polo:smile
# speaker:Dante

—Llevamos treinta segundos aquí.

# cael:monster:neutral
# speaker:Cael

—Exacto.

# speaker:hide

Evan está mirando alrededor como si hubiera aterrizado en otro planeta.

# evan:party:surprised
# speaker:Evan

—Hay más gente de la que esperaba.

# speaker:{protagonistName}

—¿Qué esperabas?

# evan:party:thinking
# speaker:Evan

—No lo sé.

# dante:black_polo:smile
# speaker:Dante

—Ha vivido encerrado en su habitación demasiados años.

# speaker:{protagonistName}

—Probablemente.

# speaker:hide

Acabáis encontrando un rincón libre.

Más o menos.

#hide:dante
Dante desaparece a por bebidas.

Evan sigue analizando el lugar.

Cael parece estar valorando escapar por una salida de emergencia.

Tú simplemente observas a la gente.

# dante:black_polo:neutral

Hasta que Dante vuelve.

# dante:black_polo:smile
# speaker:Dante

—Buenas noticias.

# speaker:{protagonistName}

—¿Cuáles?

# dante:black_polo:smile
# speaker:Dante

—He sobrevivido a la barra.

# speaker:{protagonistName}

—Increíble.

# dante:black_polo:smile
# speaker:Dante

—Lo sé.

# speaker:hide

Se deja caer a tu lado.

Más cerca de lo necesario.

No dices nada.

Él tampoco.

Por una vez.

La noche avanza.

Entre conversaciones absurdas.

Música demasiado alta.

Y Dante intentando convencer a Evan de que bailar no provoca daños físicos permanentes.

# dante:black_polo:smile
# speaker:Dante

—Baila.

# evan:party:neutral
# speaker:Evan

—No.

# dante:black_polo:smile
# speaker:Dante

— Venga baila.

# evan:party:annoyed
# speaker:Evan

—Que no.

# dante:black_polo:smile
# speaker:Dante

—Vamos a bailar.

# evan:party:embarrassed
# speaker:Evan

—No quiero.

# evan:party:sad
# speaker:Evan

—Voy a llorar.

# dante:black_polo:smile
# speaker:Dante

—Hazlo.

# speaker:hide

Por algún motivo acabas riéndote.

# dante:black_polo:staring

Dante te mira.

# dante:black_polo:smile

Solo un instante.

Pero lo notas.

Porque lleva haciéndolo toda la noche.

Mirándote.

Y apartando la vista cuando lo pillas.

Como si de repente hubiera olvidado cómo actuar contigo.

#hide:cael

Más tarde, Cael desaparece hacia la terraza exterior.

Seguramente para fumar.

#hide:evan

Evan termina atrapado en una conversación sobre videojuegos con un desconocido.

Y, sin darte cuenta...

te quedas sola con Dante.

Bueno.

Tan solos como pueden estar dos personas en una discoteca llena.

# dante:black_polo:interessed
# speaker:Dante

—¿Te lo estás pasando bien?

# speaker:{protagonistName}

—Sorprendentemente sí.

# dante:black_polo:thinking
# speaker:Dante

—¿Ves?

# speaker:{protagonistName}

—No te emociones.

# dante:black_polo:smile
# speaker:Dante

—Demasiado tarde.

# speaker:hide

Sonríe.

Y tú también.

Un poco.

Lo justo.

La música cambia.

Una canción algo más tranquila.

No lenta.

Pero sí menos caótica.

Dante te observa unos segundos.

# dante:black_polo:neutral
# speaker:Dante

—Ven.

# speaker:{protagonistName}

—¿A dónde?

# dante:black_polo:smile
# speaker:Dante

—Ven.

# speaker:{protagonistName}

—Eso no responde a mi pregunta.

# dante:black_polo:smile
# speaker:Dante

—Lo sé.

# speaker:hide

Te ofrece la mano.

# speaker:{protagonistName}

—Dante.

# dante:black_polo:shy
# speaker:Dante

—Confía en mí.

# speaker:{protagonistName}

—Eso da miedo.

# dante:black_polo:smile
# speaker:Dante

—Lo sé.


+ [Vale.]
    # dante:black_polo:smile
    # speaker:Dante
    —Perfecto.
    -> chapter_16_dante_dance

+ [Solo porque me aburro.]
    # dante:black_polo:smile
    # speaker:Dante
    —Me conformo.
    -> chapter_16_dante_dance

+ [Como esto sea ridículo te mato.]
    # dante:black_polo:smile
    # speaker:Dante
    —Asumo el riesgo.
    -> chapter_16_dante_dance


=== chapter_16_dante_dance ===
# speaker:hide

Acabas levantándote igualmente.

Dante sonríe como si hubiera ganado algo.

Te lleva hacia una zona algo menos llena.

No bailáis realmente.

Ninguno de los dos parece saber muy bien qué hacer.

Lo que resulta bastante gracioso.

Porque Dante suele actuar como si tuviera confianza infinita.

Y ahora mismo parece casi nervioso.

# dante:black_polo:shy
# speaker:Dante

—...

# speaker:{protagonistName}

—Estás raro.

# dante:black_polo:neutral
# speaker:Dante

—No lo estoy.

# speaker:{protagonistName}

—Sí que lo estás.

# dante:black_polo:shy
# speaker:Dante

—Si tú lo dices...

# speaker:hide

Dante se pasa una mano por el pelo.

# dante:black_polo:thinking
# speaker:Dante

—...

# speaker:{protagonistName}

—Entonces dime qué te pasa.

# dante:black_polo:neutral
# speaker:Dante

—Nada.

# speaker:{protagonistName}

—Mentira.

# dante:black_polo:shy
# speaker:Dante

—Vale.
# speaker:hide
Pausa.

# dante:black_polo:shy
# speaker:Dante

—Puede que un poco.

# speaker:{protagonistName}

—¿Un poco qué?

# speaker:hide

Dante baja la mirada.

Algo rarísimo en él.

# dante:black_polo:very_shy_wet_upset
# speaker:Dante

—No sé.

# speaker:{protagonistName}

—Qué respuesta tan mala.

# dante:black_polo:very_shy_wet
# speaker:Dante

—Lo sé.

# dante:black_polo:very_shy

# speaker:hide

Os quedáis unos segundos en silencio.

La música sigue sonando alrededor.

La gente sigue moviéndose.

Pero por algún motivo parece que todo queda más lejos.

Más apagado.

# dante:black_polo:staring

Dante vuelve a mirarte.

Y esta vez no aparta la vista.

# speaker:{protagonistName}

—¿Qué?

# dante:black_polo:neutral
# speaker:Dante

—Nada.

# speaker:{protagonistName}

—Otra mentira.

# dante:black_polo:smile
# speaker:Dante

—Sí.

# speaker:hide

Sonríes.
# dante:black_polo:smile

Y él también.

Por un momento ninguno dice nada.

Simplemente os quedáis ahí.

Mirándoos.

Más cerca de lo habitual.

Mucho más cerca.
# dante:black_polo:surprised

Dante parece querer decir algo.
# dante:black_polo:avoid_eye_contact
Pero no le sale.
# dante:black_polo:thinking
Lo intenta otra vez.
# dante:black_polo:staring
Fracasa.

Y eso te hace gracia.

# speaker:{protagonistName}

—Estás fatal.

# dante:black_polo:smile
# speaker:Dante

—Muchísimo.

# speaker:{protagonistName}

—Pensaba que eras bueno hablando.

# dante:black_polo:neutral
# speaker:Dante

—Normalmente sí.

# speaker:{protagonistName}

—¿Y ahora?

# dante:black_polo:shy
# speaker:Dante

—Ahora no.

# speaker:{protagonistName}

—¿Por qué?

# speaker:hide

Dante suelta una pequeña risa nerviosa.

# dante:black_polo:very_shy
# speaker:Dante

—Porque eres tú.

# speaker:hide

Y por primera vez desde que lo conoces...

No parece estar intentando quedar bien.

Solo está siendo sincero.

El corazón te da un pequeño vuelco.

Molesto.

Inoportuno.

Ridículo.

Dante da un paso más cerca.

Muy poco.

Lo suficiente.

Y tú no te apartas.

Tampoco él.

La música parece más lejana todavía.

Las luces.

La gente.

Todo.

# dante:black_polo:very_shy_wet
# speaker:Dante

—Oye.

# speaker:{protagonistName}

—¿Qué?

# dante:black_polo:very_shy
# speaker:Dante

—Creo que voy a hacer una estupidez.

# speaker:{protagonistName}

—Llegas tarde.

# dante:black_polo:smile
# speaker:Dante

—Ja.

# speaker:hide

Se ríe.

Y entonces se inclina hacia ti.

Despacio.

Como si todavía te estuviera dando la oportunidad de apartarte.

No lo haces.

Te agarra de la nuca 

Y cuando finalmente...

Os besáis.

Es breve.

Suave.

Mucho más torpe de lo que cualquiera esperaría de Dante.

Lo cual resulta casi adorable.

Cuando os separáis, ninguno habla durante unos segundos.

# dante:black_polo:very_shy_upset
# speaker:Dante

—...

# speaker:{protagonistName}

—...

# dante:black_polo:very_shy
# speaker:Dante

—Hola.

# speaker:{protagonistName}

—Hola.

# speaker:hide

No puedes evitar reírte.

# dante:black_polo:very_shy_upset

Dante se tapa media cara con una mano.

# dante:black_polo:very_shy_wet
# speaker:Dante

—Dios mío.

# speaker:{protagonistName}

—¿Qué?

# speaker:Dante

—No sé qué hacer ahora.

# speaker:{protagonistName}

—¿En serio?

# dante:black_polo:very_shy
# speaker:Dante

—En serio.

# speaker:{protagonistName}

# dante:black_polo:very_shy_wet
# speaker:Dante

—Yo también.

# speaker:{protagonistName}
—Me siento engañada.

# dante:black_polo:very_shy
# speaker:Dante

—Sí, soy un farsante.

# speaker:hide

Por primera vez desde que lo conoces...

Dante parece avergonzado de verdad.

Y eso hace que te rías todavía más.

Mientras él intenta recuperar algo de dignidad.

Sin éxito.

-> chapter_16_end


=== chapter_16_cael ===
# speaker:hide

La discoteca está hasta arriba.

Música alta.

Luces.

Gente.

Demasiada gente.

Cael tarda menos de treinta segundos en arrepentirse.

# cael:monster:annoyed
# speaker:Cael

—Odio este sitio.

# dante:black_polo:smile
# speaker:Dante

—Llevamos aquí un minuto.

# cael:monster:annoyed
# speaker:Cael

—Exacto.

# dante:black_polo:smile
# speaker:Dante

—Ni siquiera has entrado del todo.

# cael:monster:neutral
# speaker:Cael

—Y ya quiero irme.


# evan:party:thinking
# speaker:Evan

—Hay patrones interesantes.

# speaker:{protagonistName}

—Evan.

# evan:party:neutral
# speaker:Evan

—¿Sí?

# speaker:{protagonistName}

—No analices la discoteca.

# evan:party:neutral
# speaker:Evan

—Vale.
# speaker:hide
Pausa.

# evan:party:thinking
# speaker:Evan

—Pero los hay.

# speaker:hide

La noche avanza poco a poco.

Entre conversaciones absurdas.

Gente bailando.

Y Dante intentando obligar a todos a divertirse.

Lo cual suele tener el efecto contrario.

#hide:all
En algún momento te acercas a la barra.

Solo para respirar un poco.

Y cuando te giras...

Cael está ahí.

# cael:monster:neutral
# speaker:{protagonistName}

—¿Pensaba que odiabas este sitio?

# cael:monster:neutral
# speaker:Cael

—Lo odio.

# speaker:{protagonistName}

—Entonces ¿por qué estás aquí?

# cael:monster:shy
# speaker:Cael

—Supongo que es porque tú estás aquí.

# speaker:hide

Silencio.

Cael tarda un segundo en procesar lo que acaba de decir.

# cael:monster:surprised
# speaker:Cael

—No era en plan raro.

# speaker:{protagonistName}

—Ya.

# cael:monster:shy
# speaker:Cael

—Quiero decir...

# speaker:{protagonistName}

—Cael.

# cael:monster:embarrassed
# speaker:Cael

—¿Qué?

# speaker:{protagonistName}

—Lo estás empeorando.

# cael:monster:shy
# speaker:Cael

—Vaya.

# speaker:hide

Acabas riéndote.

Y él suspira.

Como si hubiera sobrevivido a algo peligroso.

Mientras habláis, Dante aparece.

Como invocado por una maldición.

# dante:black_polo:neutral
# speaker:Dante

—Aquí estabais.

# speaker:{protagonistName}

—Hola.

# dante:black_polo:neutral
# speaker:Dante

—Hola.

# cael:monster:neutral
# speaker:Cael

—¿Qué te pasa?

# dante:black_polo:neutral
# speaker:Dante

—Nada.

# cael:monster:neutral
# speaker:Cael

—Mentira.

# dante:black_polo:annoyed
# speaker:Dante

—Estoy perfectamente.

# cael:monster:neutral
# speaker:Cael

—Dante.

# dante:black_polo:annoyed
# speaker:Dante

—Estoy perfectamente.

# speaker:hide

Claramente no lo está.

Durante el resto de la noche Dante parece más distante.

Sigue haciendo bromas.

Pero menos.

Y cada vez que os ve a Cael y a ti hablando a solas...

Su cara empeora ligeramente.

Ni siquiera él parece darse cuenta.


Más tarde, cuando la música empieza a ser demasiado fuerte incluso para Dante, acabáis saliendo a una terraza exterior.

Hay bastante menos gente.

Y por fin se puede escuchar algo.
#hide:evan
Evan se queda dentro.

Probablemente perdido en alguna conversación sobre videojuegos.

# hide:dante
Dante desaparece hacia la barra.

Y, sin darte cuenta...

te quedas sola con Cael.

Apoyados contra la barandilla.

Mirando las luces de la ciudad.

Silencio.

Cómodo.

Como casi siempre con él.

Cael saca de su bolsillo un paquete de tabaco.

# cael:monster:neutral
# speaker:Cael

—¿Quieres uno?

# speaker:{protagonistName}

—Si me lo ofreces.

# speaker:hide

Cael saca dos cigarrillos del paquete.

# cael:monster:neutral_smoking

Uno lo pone en su boca.

El otro, sin decirte nada, lo coloca en la tuya.

Primero enciende el suyo.

Después se acerca.

Enciende el tuyo con el suyo.

# speaker:{protagonistName}

—¿Sigues odiando la discoteca?

# cael:monster:neutral_smoking
# speaker:Cael

—Sí.

# speaker:{protagonistName}

—Entonces has sobrevivido mejor de lo esperado.

# cael:monster:neutral_smoking
# speaker:Cael

—Porque estoy fuera.

# speaker:{protagonistName}

—Cobarde.

# cael:monster:thinking_smoking
# speaker:Cael

—Es lo que hay.

# speaker:hide

Sonríes.
# cael:monster:neutral_smoking

Y Cael también.

Una sonrisa pequeña.

Pero sincera.

# cael:monster:thinking_smoking
# speaker:Cael

—¿Sabes?

# speaker:{protagonistName}

—Miedo me das.

# cael:monster:neutral_smoking
# speaker:Cael

—Yo también me doy miedo a veces.

# speaker:{protagonistName}

—Eso es preocupante.

# cael:monster:neutral_smoking
# speaker:Cael

—Lo sé.

Pausa.

# cael:monster:shy_smoking
# speaker:Cael

—Me alegro de haber venido.

# speaker:{protagonistName}

—¿Sí?

# cael:monster:shy_smoking
# speaker:Cael

—Sí.

# speaker:{protagonistName}

—Pensaba que lo odiabas.

# cael:monster:neutral_smoking
# speaker:Cael

—Y lo odio.

# speaker:{protagonistName}

—Entonces no entiendo nada.

# cael:monster:shy_smoking
# speaker:Cael

—Yo tampoco.

# speaker:hide

Silencio.

Cael baja la vista un momento.

Luego vuelve a mirarte.

Y esta vez no aparta la mirada.

# speaker:{protagonistName}

—¿Qué?

# cael:monster:neutral_smoking
# speaker:Cael

—Nada.

# speaker:{protagonistName}

—Mentira.

# cael:monster:neutral_smoking
# speaker:Cael

—Vale.
# speaker:hide
Pausa.

# cael:monster:thinking_smoking
# speaker:Cael

—Solo estaba pensando.

# speaker:{protagonistName}

—Mala idea.

# cael:monster:neutral_smoking
# speaker:Cael

—Probablemente.

# speaker:hide

El viento mueve un poco tu pelo.

Cael parece distraerse un segundo.

Y cuando vuelve a hablar, su voz es más baja.

# cael:monster:shy_smoking
# speaker:Cael

—...
# cael:monster:thinking_smoking
No lo entiendes

Haces cara de "¿Que dices?"

Silencio.

Completo.

Absoluto.
# cael:monster:shy_smoking
Cael parece darse cuenta de que lo ha dicho.

# speaker:{protagonistName}

—¿Qué has dicho?

# cael:monster:shy_smoking
# speaker:Cael

—...

# speaker:{protagonistName}

—Dímelo.

# cael:monster:neutral_smoking
# speaker:Cael

—No he dicho nada.

# speaker:{protagonistName}

—Qué chico más misterioso.

# cael:monster:laugh_smoking
# speaker:Cael

—Un sigma.

# speaker:{protagonistName}

—Uff, no vuelvas a abrir la boca.

# speaker:hide

Te ríes.

Y eso parece relajarle.

Aunque solo un poco.

# cael:monster:neutral_smoking

Ninguno se mueve.

Ninguno aparta la mirada.

Y poco a poco...

sin prisas.

Sin grandes discursos.

Sin nada espectacular.

Ocurre.

Cael se acerca.

Despacio.

Como si todavía estuviera dándote tiempo para cambiar de opinión.

No lo haces.

Y cuando finalmente os besáis...

Es suave.

Tranquilo.

Mucho más natural de lo que cualquiera esperaría.

Cuando os separáis, Cael tarda varios segundos en reaccionar.

# cael:monster:surprise
# speaker:Cael

—...

# speaker:{protagonistName}

—...

# speaker:{protagonistName}

—¿Vas a decir algo?

# cael:monster:neutral
# speaker:Cael

—No.

# speaker:{protagonistName}

—¿Por qué?

# cael:monster:shy_smoking
# speaker:Cael

—Porque probablemente lo estropearía.

# speaker:{protagonistName}

—Buena decisión.

# cael:monster:laugh_smoking
# speaker:Cael

—A veces pienso.

# speaker:hide

Te ríes.

Y él también.

Entonces escucháis una voz detrás.

# speaker:Dante

—Increíble.

# speaker:hide

Os giráis.
# dante:black_polo:staring

Dante.

Apoyado en la puerta de la terraza.

Mirándoos.

Silencio.

# cael:monster:surprised
# speaker:Cael

—¿Cuánto llevas ahí?

# dante:black_polo:avoid_eye_contact
# speaker:Dante

—Lo suficiente.

# cael:monster:shy
# speaker:Cael

—Mierda.

# speaker:{protagonistName}

—Y tanto que mierda.

# speaker:hide
# dante:black_polo:staring

Dante intenta sonreír.

Pero no le sale.

Y por primera vez desde que lo conoces...

Parece realmente molesto.

No enfadado.

No contigo.

Simplemente...

Dolido.

# dante:black_polo:asking
# speaker:Dante

—Bueno.

# speaker:hide

Se mete las manos en los bolsillos.

# dante:black_polo:staring
# speaker:Dante

—Me alegro por vosotros.

# speaker:hide

Mentira.

Los tres lo sabéis.

# dante:black_polo:avoid_eye_contact

Dante aparta la mirada.

# speaker:Dante

—Voy a buscar a Evan.

# speaker:hide

Y vuelve a entrar en la discoteca.

#hide:dante

Dejándoos solos otra vez.

Cael observa la puerta unos segundos.

Luego suspira.

# cael:monster:neutral
# speaker:Cael

—Esto va a ser incómodo.

# speaker:{protagonistName}

—Muchísimo.

# cael:monster:neutral
# speaker:Cael

—Sí.

# speaker:hide

Y por primera vez en toda la noche...

Parece genuinamente preocupado.

-> chapter_16_end


=== chapter_16_evan ===
# speaker:hide

La discoteca está llena.

Demasiado llena.

Luces.

Música.

Gente.

Muchísima gente.

Evan parece completamente fuera de lugar.

# evan:party:surprised
# speaker:Evan

—Hay más personas de las que esperaba.

# dante:black_polo:smile
# speaker:Dante

—Es una discoteca.

# evan:party:thinking
# speaker:Evan

—Sí, pero...

# dante:black_polo:neutral
# speaker:Dante

—Evan.

# evan:party:neutral
# speaker:Evan

—¿Qué?

# dante:black_polo:smile
# speaker:Dante

—Es una discoteca.

# evan:party:shy
# speaker:Evan

—Ya lo sé...


# speaker:hide

Acabáis encontrando una mesa.

Más o menos.

Porque Dante se pasa media noche levantándose.

Cael se queja de todo.

Y Evan parece estar estudiando el comportamiento humano en directo.

# speaker:{protagonistName}

—¿Qué haces?

# evan:party:thinking
# speaker:Evan

—Observando.

# speaker:{protagonistName}

—Da miedo.

# evan:party:smile
# speaker:Evan

—Lo sé.

# speaker:{protagonistName}

—¿Qué observas?

# evan:party:thinking
# speaker:Evan

—La gente.

# speaker:{protagonistName}

—¿Y?

# evan:party:neutral
# speaker:Evan

—La mayoría está haciendo cosas que mañana lamentará.

# speaker:{protagonistName}

—Muy patético.

# evan:party:smile
# speaker:Evan

—Muy estadístico.

# speaker:hide

La noche sigue avanzando.

Y poco a poco...

Evan empieza a relajarse.

Lo cual es peligroso.

Porque significa que empieza a beber.

No mucho.

Pero suficiente.

Y Dante...

Bueno.

Dante bebe como si le pagaran por ello.

Cael tampoco se queda corto.

# speaker:{protagonistName}

—¿Cuántos llevas?

# cael:monster:neutral
# speaker:Cael

—No lo sé.

# speaker:{protagonistName}

—Eso nunca es buena señal.

# cael:monster:smile
# speaker:Cael

—Probablemente no.

# speaker:hide
#hide:all
Unas horas después...

Evan está sentado a tu lado.

Con las mejillas ligeramente rojas.

Y una sonrisa tonta que normalmente no tiene.

# evan:party:shy
# speaker:Evan

—Creo que estoy borracho.

# speaker:{protagonistName}

—Sí.

# evan:party:neutral
# speaker:Evan

—Vale.
# speaker:hide
Pausa.

# evan:party:thinking
# speaker:Evan

—Interesante.

# speaker:{protagonistName}

—¿Qué tiene de interesante?

# evan:party:thinking
# speaker:Evan

—Nunca había estado borracho.

# speaker:{protagonistName}

—¿Y qué tal?

# evan:party:embarrassed
# speaker:Evan

—No puedo pensar bien.

# speaker:{protagonistName}

—Ya.

# evan:party:shy
# speaker:Evan

—Y me gustas mucho.

# speaker:hide

Silencio.

Evan tarda unos segundos en darse cuenta de lo que ha dicho.

# evan:party:surprised
# speaker:Evan

—...

# speaker:{protagonistName}

—...

# evan:party:shy_wet
# speaker:Evan

—Eso ha salido solo.

# speaker:{protagonistName}

—Ya veo.

# evan:party:shy_worried
# speaker:Evan

—Lo siento.

# speaker:{protagonistName}

—¿Por qué?

# evan:party:shy_worried
# speaker:Evan

—No lo sé.

# speaker:hide
# speaker:hide

# speaker:hide
Te ríes.

Y Evan se pone todavía más rojo.

# evan:party:shy_wet
# speaker:Evan

—Creo que eres muy guapa.

# speaker:{protagonistName}

—Evan.

# evan:party:shy
# speaker:Evan

—Lo sé.

# speaker:{protagonistName}

—Estás borracho.

# evan:party:smile
# speaker:Evan

—Sí.

# speaker:{protagonistName}

—Mucho.

# evan:party:smile
# speaker:Evan

—Muchísimo.

# speaker:hide

Por algún motivo...

Eso te hace sonreír.

Más tarde acabáis alejándoos un poco del resto.

La música sigue sonando.

La gente sigue bailando.

Pero el ruido parece más lejano.

Evan te mira.

Y esta vez no aparta la vista.

Porque claramente el alcohol ha eliminado la poca vergüenza que le quedaba.

# evan:party:shy
# speaker:Evan

—¿Sabes?

# speaker:{protagonistName}

—Miedo me das.

# evan:party:smile
# speaker:Evan

—Llevo semanas queriendo hacer algo.

# speaker:{protagonistName}

—Eso suena preocupante.

# evan:party:shy
# speaker:Evan

—Probablemente.

# speaker:{protagonistName}

—¿Qué cosa?

# evan:party:shy
# speaker:Evan

—Esto.

# speaker:hide

Y antes de que pueda arrepentirse...

Se inclina hacia ti.

:)

El beso es torpe.

Muchísimo.

Las gafas están a punto de caerse.

Porque Evan claramente no tenía ningún plan.

Ninguna estrategia.

Ninguna preparación.

Simplemente ha ocurrido.

Cuando os separáis...

Parece que el cerebro le vuelve a arrancar.

# evan:party:shy_worried
# speaker:Evan

—...

# speaker:{protagonistName}

—...

# evan:party:shy_wet
# speaker:Evan

—Creo que acabo de hacer algo.

# speaker:{protagonistName}

—Sí.

# evan:party:shy
# speaker:Evan

—Vale.
# speaker:hide
Pausa.

# evan:party:sad
# speaker:Evan

—Necesito procesarlo.

# speaker:{protagonistName}

—Lo imaginaba.

# speaker:hide

Evan se tapa la cara.

Completamente rojo.

# evan:party:embarrassed
# speaker:Evan

—Voy a morir.

# speaker:{protagonistName}

—No exageres.

# evan:party:embarrassed
# speaker:Evan

—Voy a morir ahora mismo.

# speaker:hide

Te ríes.

Y él también.


Mientras tanto...

Al otro lado de la discoteca.

#hide:evan
# dante:black_polo:drunk
# cael:monster:drunk

Dante y Cael están objetivamente peor.

Mucho peor.

# dante:black_polo:drunk
# speaker:Dante

—Te digo que sí era una buena idea.

# cael:monster:drunk
# speaker:Cael

—No.

# dante:black_polo:drunk
# speaker:Dante

—Sí.

# cael:monster:drunk
# speaker:Cael

—No.

# dante:black_polo:drunk
# speaker:Dante

—Sí.

# cael:monster:drunk
# speaker:Cael

—No.

# speaker:hide

Ninguno sabe ya qué están discutiendo.

# dante:black_polo:drunk
# speaker:Dante

—Tú eres muy guapo.

# cael:monster:drunk
# speaker:Cael

—Lo sé.

# dante:black_polo:confused
# speaker:Dante

—No.

# cael:monster:confused
# speaker:Cael

—¿Qué?

# dante:black_polo:drunk
# speaker:Dante

—No eres tú.

# cael:monster:confused
# speaker:Cael

—¿Qué?
# speaker:hide
Dante parpadea.

Varias veces.

# dante:black_polo:thinking
# speaker:Dante

—Claudia.

# cael:monster:confused
# speaker:Cael

—¿Quién coño es Claudia?

# dante:black_polo:drunk
# speaker:Dante

—La chica esa de pelo negro.

# cael:monster:confused
# speaker:Cael

—¿Qué chica?

# dante:black_polo:drunk
# speaker:Dante

—Pues la chica de pelo negro.

# cael:monster:annoyed
# speaker:Cael

—No soy una chica.

# dante:black_polo:smile
# speaker:Dante

—Eso es exactamente lo que diría Claudia.

# speaker:hide

Cael tarda varios segundos en procesar la conversación.

# cael:monster:confused
# speaker:Cael

—No soy Claudia.

# dante:black_polo:drunk
# speaker:Dante

—¿Ah, no?

# cael:monster:drunk
# speaker:Cael

—¿Y tú eres Hugo?

# dante:black_polo:surprised
# speaker:Dante

—¿Quién coño es Hugo?

# cael:monster:drunk
# speaker:Cael

—Mi ex.

# dante:black_polo:surprised
# speaker:Dante

—¡NO SOY TU EX!

# cael:monster:drunk
# speaker:Cael

—¿Cómo que no?

# dante:black_polo:angry
# speaker:Dante

—¡PUES NO!

# cael:monster:thinking
# speaker:Cael

—Pues te pareces.

# speaker:hide

Silencio.

# dante:black_polo:confused
# speaker:Dante

—No me parezco.

# cael:monster:smile
# speaker:Cael

—No sabes ni quién es.

# speaker:hide

Dante se queda pensando.

Muchísimo.

# dante:black_polo:thinking
# speaker:Dante

—...

# cael:monster:neutral
# speaker:Cael

—¿Qué?

# dante:black_polo:drunk
# speaker:Dante

—No sé.

# speaker:hide

Cael suspira.

# cael:monster:drunk
# speaker:Cael

—Hugo era idiota.

# dante:black_polo:drunk
# speaker:Dante

—No soy Hugo.

# cael:monster:drunk
# speaker:Cael

—Lo sé.

# dante:black_polo:relieved
# speaker:Dante

—Bien.

# cael:monster:smile
# speaker:Cael

—Por eso me gustas más.

# dante:black_polo:surprised
# speaker:Dante

—Gracias.

# cael:monster:drunk
# speaker:Cael

—De nada.

# dante:black_polo:drunk
# speaker:Dante

—De nada Claudia.

# cael:monster:angry
# speaker:Cael

—¡NO SOY CLAUDIA!

# speaker:hide

Cinco minutos después...

Nadie sabe exactamente cómo.

Pero se están mirando.

Muy cerca.

# dante:black_polo:shy
# speaker:Dante

—Tienes unos ojos muy bonitos.

# cael:monster:shy
# speaker:Cael

—Tú también.

# dante:black_polo:smile
# speaker:Dante

—Gracias.

# cael:monster:smile
# speaker:Cael

—De nada.

# speaker:hide

Al final nos ven y se acercan

Al ser la unica cuerda decido que es hora de ir a casa

No quiero ser niñera de tres borrachos salidos...

Así que

Ahí termina la noche.

O eso creéis.

#bg:bus
Al día siguiente al acabar la noche.

Silencio absoluto.

Los cuatro estáis sentados en una parada de bus.

Dante mira al suelo.

Cael mira al frente.

Evan parece estar perfectamente despierto.

Tú intentas no pensar demasiado en lo ocurrido.

# dante:black_polo:embarrassed
# speaker:Dante

—Entonces...

# cael:monster:neutral
# speaker:Cael

—No ha pasado nada.

# dante:black_polo:neutral
# speaker:Dante

—Exacto.

# cael:monster:neutral
# speaker:Cael

—Nada pasó.

# dante:black_polo:neutral
# speaker:Dante

—Nada.

# cael:monster:neutral
# speaker:Cael

—Nada.

# speaker:hide

Evan los mira.

# evan:party:neutral
# speaker:Evan

—¿Os besasteis?

# speaker:hide

Silencio.

# dante:black_polo:surprised
# speaker:Dante

—No.

# evan:party:smile
# speaker:Evan

—Sí.

# cael:monster:surprised
# speaker:Cael

—No.

# evan:party:smile
# speaker:Evan

—Sí.

# dante:black_polo:annoyed
# speaker:Dante

—No.

# cael:monster:annoyed
# speaker:Cael

—No.

# evan:party:smile
# speaker:Evan

—Os vi.

# dante:black_polo:embarrassed
# speaker:Dante

—Estabas borracho.

# cael:monster:embarrassed
# speaker:Cael

—Tengo fotos.

# speaker:hide

Silencio.

Completo.

# dante:black_polo:surprised
# speaker:Dante

—¿Qué?

# cael:monster:surprised
# speaker:Cael

—¿Qué?

# speaker:hide

Evan enseña el móvil.

# phone:evan:[IMAGEN: foto_1]

[IMAGEN: foto_2]

[IMAGEN: foto_3]

# speaker:hide

Hay una foto.

Y otra.

Y otra.

Y aparentemente Evan tuvo la suficiente presencia de espíritu como para hacer un pequeño reportaje fotográfico.

# dante:black_polo:embarrassed
# speaker:Dante

—...

# cael:monster:embarrassed
# speaker:Cael

—...

# cael:monster:angry
# speaker:Cael

—Borra eso.

# evan:party:smile
# speaker:Evan

—Jamás.

# speaker:hide

Dante y Cael se miran.

# dante:black_polo:serious
# speaker:Dante

—Esto no sale de aquí.

# cael:monster:serious
# speaker:Cael

—Nunca.

# dante:black_polo:serious
# speaker:Dante

—Jamás.

# cael:monster:serious
# speaker:Cael

—Moriré antes.

# evan:party:smile
# speaker:Evan

—Las voy a guardar para siempre.

# cael:monster:angry
# speaker:Cael

—¡TE ODIO!

# dante:black_polo:angry
# speaker:Dante

—¡YO TAMBIÉN!

# speaker:hide

Y por primera vez en toda la noche...

Los dos vuelven a estar completamente de acuerdo.

-> chapter_16_end


=== chapter_16_end ===
# speaker:hide

# hide:all
# endchapter:chapter_16
-> DONE