
c = Category.create(name: "Petroleo")

m = Category.create(name: "Manejo defensivo")

User.create(username: 'mauro', email: 'mauro@iapg.org.ar', password: 'asdasd', admin: true)
# c = Category.where(name: 'Petroleo').first

a = Question.create(question: "Un hidrocarburo está formado por", score: 1, category_id: c.id)
Answer.create( answer: "Carbono e hidrógeno", is_correct: false, question_id: a.id )
Answer.create( answer: "Hidrógeno y carbón", is_correct: false, question_id: a.id )
Answer.create( answer: "Electrico", is_correct: true, question_id: a.id )
Answer.create( answer: "Carbono y oxígeno", is_correct: false, question_id: a.id )
Answer.create( answer: "Hidrógeno y azufre", is_correct: false, question_id: a.id )

b = Question.create(question: "¿Cuáles son los tipos de combustibles fósiles?", score: 1, category_id: c.id)
Answer.create( answer: "Carbón, petróleo y gas artificial", is_correct: false, question_id: b.id )
Answer.create( answer: "Carbón, petróleo, gas natural y gas licuado del petróleo", is_correct: true, question_id: b.id)
Answer.create( answer: "Carbón, petróleo y gas", is_correct: false, question_id: b.id )
Answer.create( answer: "Carbón, petróleo y gas licuado del petróleo", is_correct: false, question_id: b.id )

j = Question.create(question: "El petróleo es un recurso natural del tipo", score: 1, category_id: c.id)
Answer.create( answer: "Renovableta", is_correct: false, question_id: j.id )
Answer.create( answer: "No renovable", is_correct: true, question_id: j.id)

d = Question.create(question: "¿Cómo se clasifican los recursos naturales?", score: 1, category_id: c.id)
Answer.create( answer: "Renovables y no renovables", is_correct: true, question_id: d.id )
Answer.create( answer: "Utilizables y protegidos", is_correct: false, question_id: d.id)
Answer.create( answer: "Renovables y utilizables", is_correct: false, question_id: d.id )

e = Question.create(question: "El estado de la materia en el que se pueden obtener los hidrocarburos es:", score: 1, category_id: c.id)
Answer.create( answer: "Sólidos y líquidos", is_correct: true, question_id: e.id )
Answer.create( answer: "Sólidos y gases", is_correct: false, question_id: e.id )
Answer.create( answer: "Líquidos y gases", is_correct: false, question_id: e.id )
Answer.create( answer: "Líquidos", is_correct: false, question_id: e.id )

f = Question.create(question: "Las tuberías que transportan a los hidrocarburos líquidos se conocen como:", score: 1, category_id: c.id)
Answer.create( answer: "Poliductos", is_correct: true, question_id: f.id )
Answer.create( answer: "Oleoductos", is_correct: false, question_id: f.id)
Answer.create( answer: "Canales de crudo", is_correct: false, question_id: f.id )
Answer.create( answer: "Canales de distribución", is_correct: false, question_id: f.id )

g = Question.create(question: "Para obtener gasolina, diesel, lubricantes y otros derivados del petróleo se hace uso de:", score: 1, category_id: c.id)
Answer.create( answer: "Un oleoducto", is_correct: true, question_id: g.id )
Answer.create( answer: "Un destilador fraccionado", is_correct: false, question_id: g.id)
Answer.create( answer: "Un gasoducto", is_correct: false, question_id: g.id )
Answer.create( answer: "Un grifo normalizado", is_correct: false, question_id: g.id )

h = Question.create(question: "¿Cuál de las siguientes opciones no son fuentes de energía alternativas?", score: 1, category_id: c.id)
Answer.create( answer: "Energía solar", is_correct: true, question_id: h.id )
Answer.create( answer: "Carbón", is_correct: false, question_id: h.id)
Answer.create( answer: "Energía", is_correct: false, question_id: h.id )
Answer.create( answer: "Petróleo", is_correct: false, question_id: h.id )

i = Question.create(question: "¿Cuál o cuáles de las siguientes afirmaciones son desventajas del uso de combustibles fósiles?", score: 1, category_id: c.id)
Answer.create( answer: "Meowth", is_correct: true, question_id: i.id )
Answer.create( answer: "Mew", is_correct: false, question_id: i.id)
Answer.create( answer: "Mewtwo", is_correct: false, question_id: i.id )
Answer.create( answer: "No tienen pokemon", is_correct: false, question_id: i.id )

f = Question.create(question: "pokemon", score: 1, category_id: c.id)
Answer.create( answer: "Son grandes fuentes emisoras de gases tóxicos y de efecto invernadero.", is_correct: true, question_id: f.id )
Answer.create( answer: "Producen gran cantidad de energía.", is_correct: false, question_id: f.id)
Answer.create( answer: "Al ser un recurso limitado ha sido y es fuente de conflictos entre distintos países.", is_correct: false, question_id: f.id )
Answer.create( answer: "Ninguna de las anteriores", is_correct: false, question_id: f.id )

f = Question.create(question: "Para que se forme el petróleo Hace falta:", score: 1, category_id: c.id)
Answer.create( answer: "Elevadas presiones", is_correct: true, question_id: f.id )
Answer.create( answer: "Presencia de restos orgánicos", is_correct: false, question_id: f.id)
Answer.create( answer: "Presencia de bacterias aeróbicas", is_correct: false, question_id: f.id )

############################################### manejo defensivo

iapg = Question.create(question: "A fin de aumentar la propia seguridad y la de los demás, ¿a qué se debería poner atención durante la circulación?", score: 1, category_id: m.id)
Answer.create( answer: "Al estado del pavimento y al clima, en especial.", is_correct: false, question_id: iapg.id )
Answer.create( answer: "A las condiciones en que se encuentran: el automóvil, la infraestructura vial, las condiciones climáticas y el conductor.", is_correct: true, question_id: iapg.id)
Answer.create( answer: "Ninguna de las anteriores.", is_correct: false, question_id: iapg.id )

iapg = Question.create(question: "Además de provocar víctimas fatales o lesionados graves, ¿Qué otras consecuencias pueden generar un siniestro de tránsito?", score: 1, category_id: m.id)
Answer.create( answer: "Daños materiales, costos sanitarios y administrativos.", is_correct: true, question_id: iapg.id )
Answer.create( answer: "Daños materiales y costos sanitarios.", is_correct: false, question_id: iapg.id)
Answer.create( answer: "Sólo daños materiales.", is_correct: false, question_id: iapg.id )

iapg = Question.create(question: "¿Se puede circular en bicicleta por esta vía?", score: 1, category_id: m.id)
Answer.create( answer: "Sí, siempre que se mantenga en el carril derecho.", is_correct: false, question_id: iapg.id )
Answer.create( answer: "No, está prohibido.", is_correct: true, question_id: iapg.id)
Answer.create( answer: "Sí, mientras se respete la velocidad mínima de la arteria.", is_correct: false, question_id: iapg.id )

iapg = Question.create(question: "¿Qué distancia lateral debe dejar respecto de este ciclista en caso de querer adelantarlo?", score: 1, category_id: m.id)
Answer.create( answer: "Al menos, un metro y medio.", is_correct: true, question_id: iapg.id )
Answer.create( answer: "Al menos, medio metro.", is_correct: false, question_id: iapg.id)
Answer.create( answer: "Lo suficiente para no tocarlo.", is_correct: false, question_id: iapg.id )

iapg = Question.create(question: "¿Cómo debe proceder, si al llegar a esta intersección, se desea continuar en línea recta?", score: 1, category_id: m.id)
Answer.create( answer: "Detener el vehículo para que el peatón termine de cruzar y, antes de avanzar, hacer contacto visual con los peatones que aún no comenzaron a cruzar, aun sabiendo que obstruiré por un momento la bocacalle.",
   is_correct: true, question_id: iapg.id )
Answer.create( answer: "Avanzar porque la luz verde del semáforo me habilita, pero tocando bocina para que los peatones no se distraigan. Es importante no obstruir la bocacalle.", is_correct: false, question_id: iapg.id)

iapg = Question.create(question: "Si Ud. es el conductor del vehículo, ¿Qué conducta debe adoptar en la siguiente situación?", score: 1, category_id: m.id)
Answer.create( answer: "Priorizar la circulación del peatón, indefectiblemente.", is_correct: true, question_id: iapg.id )
Answer.create( answer: "Realizar una guiñada para advertir su preferencia de avance.", is_correct: false, question_id: iapg.id)
Answer.create( answer: "Completar la maniobra como sea posible, para disminuir su tiempo de permanencia sobre la vereda.", is_correct: false, question_id: iapg.id )

iapg = Question.create(question: "En caso de participar de un siniestro vial en una avenida, es recomendable señalizar la zona para que no se produzcan más incidentes viales.", score: 1, category_id: m.id)
Answer.create( answer: "Verdadero", is_correct: true, question_id: iapg.id )
Answer.create( answer: "Falso", is_correct: false, question_id: iapg.id)

iapg = Question.create(question: "En caso de participar de un siniestro vial, ¿de cuánto tiempo se dispone para dar aviso sobre el hecho a la compañía aseguradora del vehículo?", score: 1, category_id: m.id)
Answer.create( answer: "24 horas.", is_correct: false, question_id: iapg.id )
Answer.create( answer: "48 horas.", is_correct: false, question_id: iapg.id)
Answer.create( answer: "72 horas.", is_correct: true, question_id: iapg.id )

iapg = Question.create(question: "Con esta documentación, ¿Quién está autorizado a conducir el vehículo?", score: 1, category_id: m.id)
Answer.create( answer: "Nadie, porque está vencida y debe renovarse.", is_correct: false, question_id: iapg.id )
Answer.create( answer: "Sólo el titular.", is_correct: true, question_id: iapg.id)
Answer.create( answer: "El titular y sus familiares directos, por tener el mismo apellido.", is_correct: false, question_id: iapg.id )

iapg = Question.create(question: "¿Está permitido circular con la placa de dominio de este modo?", score: 1, category_id: m.id)
Answer.create( answer: "Sí, ya que exhibe una documentación provisoria.", is_correct: false, question_id: iapg.id )
Answer.create( answer: "No, ya que para poder cumplir su función como provisoria debe ampliarse.", is_correct: false, question_id: iapg.id)
Answer.create( answer: "No, ya que debe estar colocada en el lugar y de forma reglamentaria.", is_correct: true, question_id: iapg.id )

iapg = Question.create(question: "¿Cuál es el objetivo de la Verificación Técnica Vehicular?", score: 1, category_id: m.id)
Answer.create( answer: "Reducir la contaminación y mejorar la calidad del medio ambiente.", is_correct: false, question_id: iapg.id )
Answer.create( answer: "Garantizar el cumplimiento de las normas de seguridad de los vehículos.", is_correct: false, question_id: iapg.id)
Answer.create( answer: "Ambas respuestas, la A y la B, son correctas.", is_correct: true, question_id: iapg.id )

iapg = Question.create(question: "¿Consumir cuál de estas sustancias pueden afectar la capacidad para conducir?", score: 1, category_id: m.id)
Answer.create( answer: "Las drogas ilegales y algunas legales (como el alcohol y algunos medicamentos).", is_correct: true, question_id: iapg.id )
Answer.create( answer: "Sólo las drogas ilegales.", is_correct: false, question_id: iapg.id)
Answer.create( answer: "Todo tipo de drogas (las legales e ilegales).", is_correct: false, question_id: iapg.id )

iapg = Question.create(question: "Cuando se consume alcohol, ¿se pueden producir alteraciones en la visión?", score: 1, category_id: m.id)
Answer.create( answer: "Si", is_correct: true, question_id: iapg.id )
Answer.create( answer: "No, solamente afecta a la capacidad motora.", is_correct: false, question_id: iapg.id)
Answer.create( answer: "Sólo cuando se tiene más de 1 gramo de alcohol por litro de sangre.", is_correct: false, question_id: iapg.id )

iapg = Question.create(question: "Consumir cerveza influye en la conducción de un vehículo, haciendo que el conductor reduzca su capacidad de reacción y aumentando el tiempo necesario para responder ante un estímulo.", score: 1, category_id: m.id)
Answer.create( answer: "Verdadero", is_correct: true, question_id: iapg.id )
Answer.create( answer: "Falso", is_correct: false, question_id: iapg.id)

iapg = Question.create(question: "Si el conductor de un vehículo se niega a realizar este test, ¿constituye ésto una falta?", score: 1, category_id: m.id)
Answer.create( answer: "Sólo si se ha participado de un siniestro vial.", is_correct: false, question_id: iapg.id )
Answer.create( answer: "No. Sólo la prueba positiva, efectivamente realizada, se considera una falta.", is_correct: false, question_id: iapg.id)
Answer.create( answer: "Sí, la misma se toma como una presunción de alcoholemia positiva.", is_correct: true, question_id: iapg.id )

iapg = Question.create(question: "¿Cada cuánto tiempo es recomendable parar si se realiza un viaje largo?", score: 1, category_id: m.id)
Answer.create( answer: "Cada 2 horas aproximadamente.", is_correct: true, question_id: iapg.id )
Answer.create( answer: "Cada 4 horas aproximadamente.", is_correct: false, question_id: iapg.id)
Answer.create( answer: "Cada 1 hora aproximadamente.", is_correct: false, question_id: iapg.id )

iapg = Question.create(question: "Si se va a conducir por un largo tiempo, lo recomendable es dormir la noche anterior…", score: 1, category_id: m.id)
Answer.create( answer: "Aproximadamente 8 horas.", is_correct: true, question_id: iapg.id )
Answer.create( answer: "Al menos 4 horas.", is_correct: false, question_id: iapg.id)
Answer.create( answer: "Algunas horas, su cantidad no influye en la conducción ya que lo importante es realizar paradas de descanso.", is_correct: false, question_id: iapg.id )

iapg = Question.create(question: "¿Estar 17 horas despierto provoca tener el mismo nivel de reacción que una persona con un nivel de alcohol en sangre mayor al permitido por Ley?", score: 1, category_id: m.id)
Answer.create( answer: "Sí, ya que ambas condiciones aumentan el tiempo de reacción.", is_correct: true, question_id: iapg.id )
Answer.create( answer: "No, ya que sólo tener alcoholemia positiva aumenta el tiempo de reacción.", is_correct: false, question_id: iapg.id)
Answer.create( answer: "No, el descanso no tiene nada que ver con el consumo de alcohol.", is_correct: false, question_id: iapg.id )

iapg = Question.create(question: "¿Cuáles de éstos son los síntomas que advierten sobre la fatiga en la conducción?", score: 1, category_id: m.id)
Answer.create( answer: "La sensación de euforia.", is_correct: false, question_id: iapg.id )
Answer.create( answer: "La visión borrosa y el aumento del número y duración de parpadeos.", is_correct: true, question_id: iapg.id)
Answer.create( answer: "No realizar movimientos en el asiento, ni cambios de postura.", is_correct: false, question_id: iapg.id )

iapg = Question.create(question: "¿Qué consecuencias tiene conducir habiendo dormido pocas horas previamente?", score: 1, category_id: m.id)
Answer.create( answer: "Reduce la capacidad de reacción y el estado de alerta.", is_correct: false, question_id: iapg.id )
Answer.create( answer: "Predispone a tomar malas decisiones, poniendo en riesgo la vida.", is_correct: false, question_id: iapg.id)
Answer.create( answer: "Ambas respuestas, la A y la B, son correctas.", is_correct: true, question_id: iapg.id )

iapg = Question.create(question: "Bajo los efectos del estrés, la conducción se vuelve:", score: 1, category_id: m.id)
Answer.create( answer: "Más temeraria.", is_correct: false, question_id: iapg.id )
Answer.create( answer: "Menos segura.", is_correct: false, question_id: iapg.id)
Answer.create( answer: "Ambas respuestas, A y B, son correctas.", is_correct: true, question_id: iapg.id )



# iapg = Question.create(question: "pokemon", score: 1, category_id: m.id)
# Answer.create( answer: "Meowth", is_correct: true, question_id: f.id )
# Answer.create( answer: "Mew", is_correct: false, question_id: f.id)
# Answer.create( answer: "Mewtwo", is_correct: false, question_id: f.id )

# iapg = Question.create(question: "pokemon", score: 1, category_id: m.id)
# Answer.create( answer: "Meowth", is_correct: true, question_id: f.id )
# Answer.create( answer: "Mew", is_correct: false, question_id: f.id)
# Answer.create( answer: "Mewtwo", is_correct: false, question_id: f.id )






