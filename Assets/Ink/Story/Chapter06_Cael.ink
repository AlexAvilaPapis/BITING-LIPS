=== chapter_06_cael ===
#music:coquette

# hide:all
# bg:cafeteria

CAPÍTULO 6 - COMES CON CAEL

# speaker:hide

Os separáis de los otros dos.

Cael no dice nada.

Simplemente empieza a caminar.

Tú lo sigues.

# speaker:{protagonistName}

—¿A dónde vamos?

# cael:black:neutral
# speaker:Cael

—A un sitio.

# speaker:{protagonistName}

—Eso no suena muy específico.

# cael:black:neutral
# speaker:Cael

—Ya.

# speaker:hide

Camináis unos minutos.

Llegáis a una zona de la cafetería.

Más apartada.

Más tranquila.

# bg:cafeteria

# cael:black:neutral
# speaker:Cael

—Aquí no suele haber mucha gente.

# speaker:{protagonistName}

—Me gusta.

# cael:black:neutral
# speaker:Cael

—Ya.

# speaker:hide

Entráis.

El ambiente es calmado.

Pocas mesas ocupadas.

Casi no hay ruido.

Pedís en la barra.

Cael pide rápido.

Sin pensarlo mucho.

Tú miras un poco más.

Acabas eligiendo algo sencillo.

Os sentáis.

Frente a frente.

Silencio.

Empiezas a comer.

Rápido.

# cael:black:neutral
# speaker:Cael

—Comes rápido.

# speaker:{protagonistName}

—Tengo hambre.

# cael:black:neutral
# speaker:Cael

—Se nota.

# speaker:{protagonistName}

—No eres el primero que lo dice.

# cael:black:neutral
# speaker:Cael

—No me sorprende.

# speaker:hide

Silencio.

Cael bebe un sorbo.

# cael:black:neutral
# speaker:Cael

—Prefiero sitios así.

# speaker:{protagonistName}

—Yo también.

# cael:black:thinking
# speaker:Cael

—Menos ruido.

# speaker:{protagonistName}

—Menos gente.

# cael:black:neutral
# speaker:Cael

—Exacto.

# speaker:hide

Tu estómago sigue algo inquieto.

Aunque ya estás comiendo.

# speaker:{protagonistName}

—¿Siempre vienes aquí?

# cael:black:neutral
# speaker:Cael

—A veces.

# speaker:{protagonistName}

—Tiene sentido.

# cael:black:neutral
# speaker:Cael

—Está cerca.

# speaker:hide

Silencio otra vez.

Pero no incómodo.

Cael te mira un momento.

Luego aparta la vista.

# cael:black:thinking
# speaker:Cael

—No hablas mucho.

# speaker:{protagonistName}

—Tú tampoco.

# cael:black:neutral
# speaker:Cael

—No hace falta.

# speaker:{protagonistName}

—Supongo.

# speaker:hide

Terminas otro bocado.

Más despacio ahora.

# cael:black:neutral
# speaker:Cael

—¿Te gusta este sitio?

# speaker:{protagonistName}

—Sí.

# cael:black:happy
# speaker:Cael

—Bien.

# speaker:hide

No añade nada más.

Silencio.

El ambiente sigue tranquilo.

+ [¿Siempre eres así de callado?]
    ~ caelAffinity += 1
    -> chapter_06_cael_choice_a

+ [Se está bien aquí… contigo.]
    ~ caelAffinity += 2
    -> chapter_06_cael_choice_b

+ [Podrías hablar más.]
    ~ caelAffinity += 0
    -> chapter_06_cael_choice_c


=== chapter_06_cael_choice_a ===

# cael:black:neutral
# speaker:Cael

—Sí.

Pausa.

# cael:black:thinking
# speaker:Cael

—La mayoría del tiempo.

# speaker:{protagonistName}

—¿Y el resto?

Cael piensa un segundo.

# cael:black:thinking
# speaker:Cael

—Depende.

# speaker:{protagonistName}

—¿De qué?

Cael te mira brevemente.

# cael:black:shy
# speaker:Cael

—De la persona.

# speaker:hide

Silencio.

-> chapter_06_cael_continue


=== chapter_06_cael_choice_b ===

# cael:black:surprised
# speaker:Cael

—

# speaker:hide

Cael se queda quieto un segundo.

No responde inmediatamente.

Te mira.

Un poco más de lo normal.

# cael:black:shy
# speaker:Cael

—Sí.

Pausa.

# cael:black:neutral
# speaker:Cael

—Aquí se está bien.

# speaker:hide

No repite "contigo".

Pero tampoco lo evita.

Cael baja la mirada al vaso.

# cael:black:thinking
# speaker:Cael

—Es tranquilo.

# speaker:hide

Silencio.

Pero distinto.

-> chapter_06_cael_continue


=== chapter_06_cael_choice_c ===

# cael:black:thinking
# speaker:Cael

—Podría.

# speaker:{protagonistName}

—¿Y por qué no lo haces?

# cael:black:neutral
# speaker:Cael

—Porque normalmente no merece la pena.

# speaker:{protagonistName}

—Qué motivador.

Cael se encoge de hombros.

# cael:black:thinking
# speaker:Cael

—Estoy hablando ahora.

# speaker:{protagonistName}

—Eso es verdad.

# cael:black:neutral
# speaker:Cael

—No te quejes tanto.

-> chapter_06_cael_continue


=== chapter_06_cael_continue ===

# speaker:hide

Cael deja el vaso en la mesa.

# cael:black:thinking
# speaker:Cael

—La mayoría de conversaciones no valen la pena.

# speaker:{protagonistName}

—Eso es un poco triste.

# cael:black:neutral
# speaker:Cael

—Es práctico.

# speaker:{protagonistName}

—Tú sabrás.

# speaker:hide

Silencio.

Pero esta vez más ligero.

Terminas de comer.

Tu estómago se calma un poco.

Pero no del todo.

Cael te mira un segundo.

# cael:black:asking
# speaker:Cael

—¿Mejor?

# speaker:{protagonistName}

—Sí.

# cael:black:neutral
# speaker:Cael

—Bien.

# speaker:hide

Silencio.

Cael sigue mirándote.

+ [¿Qué?]
    ~ caelAffinity += 1
    -> chapter_06_cael_final_a

+ [Deja de mirarme así.]
    ~ caelAffinity += 1
    -> chapter_06_cael_final_b

+ [Sostenerle la mirada.]
    ~ caelAffinity += 1
    -> chapter_06_cael_final_c


=== chapter_06_cael_final_a ===

# speaker:{protagonistName}

—¿Qué?

# cael:black:neutral
# speaker:Cael

—Nada.

Pausa.

# cael:black:thinking
# speaker:Cael

—Solo estaba pensando.

# speaker:{protagonistName}

—¿En qué?

Cael se encoge ligeramente de hombros.

# cael:black:neutral
# speaker:Cael

—En cosas.

# speaker:{protagonistName}

—Muy específico.

# cael:black:thinking
# speaker:Cael

—No hace falta más.

# speaker:hide

Silencio.

Pero no incómodo.

-> chapter_06_cael_end


=== chapter_06_cael_final_b ===

# speaker:{protagonistName}

—Deja de mirarme así.

Cael parpadea.

# cael:black:surprised
# speaker:Cael

—¿Así cómo?

# speaker:{protagonistName}

—De esa forma.

Pausa.

Cael aparta la mirada.

# cael:black:thinking
# speaker:Cael

—Es costumbre.

# speaker:{protagonistName}

—Pues quítatela.

# cael:black:neutral
# speaker:Cael

—Lo intentaré.

# speaker:hide

Silencio.

Un segundo después…

Cael vuelve a mirarte.

# cael:black:shy
# speaker:Cael

—No prometo nada.

-> chapter_06_cael_end


=== chapter_06_cael_final_c ===

# speaker:hide

No apartas la mirada.

Cael tampoco.

Silencio.

Más largo.

Más tenso.

Pero tranquilo.

# cael:black:staring
# speaker:Cael

—¿No vas a apartarla?

# speaker:{protagonistName}

—No.

# speaker:hide

Cael se queda mirándote.

Se sonroja ligeramente.

# cael:black:shy
# speaker:Cael

—La mayoría lo hace.

# speaker:{protagonistName}

—Tú lo has dicho.

# speaker:{protagonistName}

—La mayoría.

# speaker:{protagonistName}

—Yo no.

Cael asiente levemente.

# cael:black:shy
# speaker:Cael

—Ya lo veo.

# speaker:hide

Silencio.

Pero esta vez…

más cercano.

-> chapter_06_cael_end


=== chapter_06_cael_end ===

# speaker:hide

El ruido suave de la cafetería vuelve poco a poco.

La conversación se apaga.

Pero no de forma incómoda.

Simplemente…

se queda ahí.

# hide:all
# endchapter:chapter_07
-> DONE