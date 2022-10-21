
c = Category.create(name: "Petroleo")

m = Category.create(name: "Manejo defensivo")

User.create(username: 'mauro', email: 'mauro@iapg.org.ar', password: 'asdasd', admin: true)
User.create(username: 'alexa', email: 'alexa@iapg.org.ar', password: '123123', admin: false)
User.create(username: 'conrado', email: 'conrado@iapg.org.ar', password: 'bonfiglioli', admin: false)
# c = Category.where(name: 'Petroleo').first

a = Question.create(question: "Un hidrocarburo está formado por", score: 1, category_id: c.id)
Answer.create( answer: "Carbono e hidrógeno", is_correct: true, question_id: a.id )
Answer.create( answer: "Hidrógeno y carbón", is_correct: false, question_id: a.id )
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
Answer.create( answer: "Sólidos y líquidos", is_correct: false, question_id: e.id )
Answer.create( answer: "Sólidos y gases", is_correct: false, question_id: e.id )
Answer.create( answer: "Líquidos y gases", is_correct: true, question_id: e.id )
Answer.create( answer: "Líquidos", is_correct: false, question_id: e.id )

f = Question.create(question: "Las tuberías que transportan a los hidrocarburos líquidos se conocen como:", score: 1, category_id: c.id)
Answer.create( answer: "Poliductos", is_correct: false, question_id: f.id )
Answer.create( answer: "Oleoductos", is_correct: true, question_id: f.id)
Answer.create( answer: "Canales de crudo", is_correct: false, question_id: f.id )
Answer.create( answer: "Canales de distribución", is_correct: false, question_id: f.id )

g = Question.create(question: "Para obtener gasolina, diesel, lubricantes y otros derivados del petróleo se hace uso de:", score: 1, category_id: c.id)
Answer.create( answer: "Un oleoducto", is_correct: false, question_id: g.id )
Answer.create( answer: "Un destilador fraccionado", is_correct: true, question_id: g.id)
Answer.create( answer: "Un gasoducto", is_correct: false, question_id: g.id )
Answer.create( answer: "Un grifo normalizado", is_correct: false, question_id: g.id )

h = Question.create(question: "¿Cuál de las siguientes opciones no son fuentes de energía alternativas?", score: 1, category_id: c.id)
Answer.create( answer: "Energía solar", is_correct: false, question_id: h.id )
Answer.create( answer: "Carbón", is_correct: true, question_id: h.id)
Answer.create( answer: "Energía", is_correct: false, question_id: h.id )
Answer.create( answer: "Petróleo", is_correct: true, question_id: h.id )

f = Question.create(question: "¿Cuál o cuáles de las siguientes afirmaciones son desventajas del uso de combustibles fósiles?", score: 1, category_id: c.id)
Answer.create( answer: "Son grandes fuentes emisoras de gases tóxicos y de efecto invernadero.", is_correct: true, question_id: f.id )
Answer.create( answer: "Producen gran cantidad de energía.", is_correct: true, question_id: f.id)
Answer.create( answer: "Al ser un recurso limitado ha sido y es fuente de conflictos entre distintos países.", is_correct: false, question_id: f.id )
Answer.create( answer: "Ninguna de las anteriores", is_correct: false, question_id: f.id )

f = Question.create(question: "Para que se forme el petróleo hace falta:", score: 1, category_id: c.id)
Answer.create( answer: "Elevadas presiones", is_correct: false, question_id: f.id )
Answer.create( answer: "Presencia de restos orgánicos", is_correct: true, question_id: f.id)
Answer.create( answer: "Presencia de bacterias aeróbicas", is_correct: false, question_id: f.id )

q_p = Question.create(question: "	¿Cómo se llaman las normas relacionadas al petróleo que rigen propiedades, prácticas de operación, protección y diseño?", score: 1, category_id: c.id)
Answer.create( answer: "API", is_correct: true, question_id: q_p.id )
Answer.create( answer: "ISO", is_correct: false, question_id: q_p.id)
Answer.create( answer: "ASTM", is_correct: false, question_id: q_p.id )

q_p = Question.create(question: "El hidrocarburo se mide en:", score: 1, category_id: c.id)
Answer.create( answer: "Litros.", is_correct: false, question_id: q_p.id )
Answer.create( answer: "Metros cúbicos.", is_correct: false, question_id: q_p.id)
Answer.create( answer: "Barriles.", is_correct: true, question_id: q_p.id )

q_p = Question.create(question: "¿Dónde se ubica la cuenca golfo San Jorge?", score: 1, category_id: c.id)
Answer.create( answer: "Neuquén.", is_correct: false, question_id: q_p.id )
Answer.create( answer: "Entre Chubut y Santa Cruz.", is_correct: true, question_id: q_p.id)
Answer.create( answer: "Entre Rio Negro y Chubut.", is_correct: false, question_id: q_p.id )

q_p = Question.create(question: "¿Qué significan las siglas YPF?", score: 1, category_id: c.id)
Answer.create( answer: "Yacimientos Petroquímicos Fiscales.", is_correct: false, question_id: q_p.id )
Answer.create( answer: "Yacimiento Petrolíferos Fiscales.", is_correct: false, question_id: q_p.id)
Answer.create( answer: "Yacimientos Petrolíferos Federales.", is_correct: true, question_id: q_p.id )

q_p = Question.create(question: "El efecto invernadero es producido, principalmente, por el aumento en el aire de:", score: 1, category_id: c.id)
Answer.create( answer: "Hidrocarburos no quemados.", is_correct: false, question_id: q_p.id )
Answer.create( answer: "Óxido de azufre.", is_correct: false, question_id: q_p.id)
Answer.create( answer: "CO2.", is_correct: true, question_id: q_p.id )

q_p = Question.create(question: "¿El gas natural está compuesto por?", score: 1, category_id: c.id)
Answer.create( answer: "Butano.", is_correct: true, question_id: q_p.id )
Answer.create( answer: "Octano.", is_correct: false, question_id: q_p.id)
Answer.create( answer: "Propano.", is_correct: false, question_id: q_p.id )
Answer.create( answer: "Metano.", is_correct: false, question_id: q_p.id )

q_p = Question.create(question: "¿Por qué el gas natural es el menos contaminante de los combustibles fósiles?", score: 1, category_id: c.id)
Answer.create( answer: "Más liviano.", is_correct: true, question_id: q_p.id )
Answer.create( answer: "No genera polvo.", is_correct: false, question_id: q_p.id)
Answer.create( answer: "No genera humo.", is_correct: false, question_id: q_p.id )

q_p = Question.create(question: "De las energías fósiles, ¿cuál es la más contaminante?", score: 1, category_id: c.id)
Answer.create( answer: "Carbón.", is_correct: true, question_id: q_p.id )
Answer.create( answer: "Gas Natural.", is_correct: false, question_id: q_p.id)
Answer.create( answer: "Petróleo.", is_correct: false, question_id: q_p.id )

q_p = Question.create(question: "El petróleo, ¿en que se transporta en nuestra región?", score: 1, category_id: c.id)
Answer.create( answer: "Oleoductos.", is_correct: true, question_id: q_p.id )
Answer.create( answer: "Aviones.", is_correct: false, question_id: q_p.id)
Answer.create( answer: "Trenes.", is_correct: false, question_id: q_p.id )

q_p = Question.create(question: "Indica cuál de estos tejidos no es un derivado del petróleo:", score: 1, category_id: c.id)
Answer.create( answer: "Nylon.", is_correct: false, question_id: q_p.id )
Answer.create( answer: "Pana.", is_correct: true, question_id: q_p.id)
Answer.create( answer: "Poliester.", is_correct: false, question_id: q_p.id )

q_p = Question.create(question: "La presión de bombeo de petróleo se mide generalmente en:", score: 1, category_id: c.id)
Answer.create( answer: "Kilogramos por centímetros cuadrados.", is_correct: true, question_id: q_p.id )
Answer.create( answer: "Kilogramos por longitud.", is_correct: false, question_id: q_p.id)
Answer.create( answer: "Kilogramos.", is_correct: false, question_id: q_p.id )

q_p = Question.create(question: "El caudal de bombeo se mide en:", score: 1, category_id: c.id)
Answer.create( answer: "Yardas.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "kilogramos.", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "Litros.", is_correct: 1, question_id: q_p.id )

q_p = Question.create(question: "Para que un trepano perfore se le aplican.", score: 1, category_id: c.id)
Answer.create( answer: "Rotación, torque y caudal.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "Peso, Rotación y Caudal.", is_correct: 1, question_id: q_p.id)
Answer.create( answer: "Peso, Rotación y torque.", is_correct: false, question_id: q_p.id )

q_p = Question.create(question: "¿Qué significan las siglas PH en un pozo en perforación?", score: 1, category_id: c.id)
Answer.create( answer: "Plena Hidrostática.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "Presión Hidrante.", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "Presión Hidrostática.", is_correct: 1, question_id: q_p.id )

q_p = Question.create(question: "¿Cómo se mide la capacidad rectangular de una pileta de lodo?", score: 1, category_id: c.id)
Answer.create( answer: "Alto x ancho x largo.", is_correct: true, question_id: q_p.id )
Answer.create( answer: "Ancho x largo.", is_correct: false, question_id: q_p.id)
Answer.create( answer: "Alto x Ancho.", is_correct: false, question_id: q_p.id )

q_p = Question.create(question: "¿De qué color es el Petróleo?", score: 1, category_id: c.id)
Answer.create( answer: "Marrón", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "Solo Negro.", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "Negro/ marrón/ verde incluso amarillo.", is_correct: 1, question_id: q_p.id )

q_p = Question.create(question: "¿Quién tiene menor Densidad?", score: 1, category_id: c.id)
Answer.create( answer: "El agua.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "El petróleo.", is_correct: false, question_id: q_p.id)
Answer.create( answer: "El gas.", is_correct: 1, question_id: q_p.id )

q_p = Question.create(question: "Generalmente en una capa del pozo cómo se ubican desde abajo hacia arriba.", score: 1, category_id: c.id)
Answer.create( answer: "Petróleo- gas y agua salada.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "Gas - Petróleo y Agua salada.", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "Agua salada - Petróleo y gas.", is_correct: 1, question_id: q_p.id )

q_p = Question.create(question: "¿Cuándo se transporta Petróleo en barco a las Destilería el porcentaje de agua que lleva es?", score: 1, category_id: c.id)
Answer.create( answer: "Nulo", is_correct: 1, question_id: q_p.id )
Answer.create( answer: "Mínimo", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "50%", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "Generalmente al perforar las secuencias son.", score: 1, category_id: c.id)
Answer.create( answer: "Perforar, cementar y entubar.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "Perforar, entubar y cementar.", is_correct: 1, question_id: q_p.id)


q_p = Question.create(question: "¿Qué es un equipo de torre?", score: 1, category_id: c.id)
Answer.create( answer: "Una antena vertical de comunicaciones.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "Una estructura y periféricos para perforación, reparación y terminación de pozos petroleros.", is_correct: 1, question_id: q_p.id)
Answer.create( answer: "Un depósito de agua en elevación.", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "¿Cuál es la función de una Estación Satélite o Batería en la producción de hidrocarburos?", score: 1, category_id: c.id)
Answer.create( answer: "Realizar la separación de las 3 fases del hidrocarburo [petróleo, gas, agua].", is_correct: 1, question_id: q_p.id )
Answer.create( answer: "Tratar el agua de formación para realizar recuperación secundaria.", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "Tratar el petróleo y dejarlo en especificación para la venta.", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "¿Qué tipos de pozos ingresan a una Estación Satélite o Batería?", score: 1, category_id: c.id)
Answer.create( answer: "Pozos inyectores de agua de formación. ", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "Pozos de producción primaria y Pozos afectados por Recuperación Secundaria.", is_correct: 1, question_id: q_p.id)
Answer.create( answer: "Pozos productores de Gas de alta presión.", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "¿Para qué presión de trabajo se diseña una Estación Satélite o Batería?", score: 1, category_id: c.id)
Answer.create( answer: "5000 PSI.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "10000 PSI.", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "1000 PSI.", is_correct: 1, question_id: q_p.id )

q_p = Question.create(question: "¿Cuál es la industria preponderante en Comodoro Rivadavia?", score: 1, category_id: c.id)
Answer.create( answer: "La industria de petróleo y gas.", is_correct: 1, question_id: q_p.id )
Answer.create( answer: "La industria ganadera.", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "La industria algodonera.", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "En nuestra industria, ¿A qué profundidad promedio vamos a buscar, o extraemos el petróleo y el gas?", score: 1, category_id: c.id)
Answer.create( answer: "1500-2500m, con más frecuencia.", is_correct: 1, question_id: q_p.id )
Answer.create( answer: "3500-4500m, con más frecuencia.", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "5500-6500m, con más frecuencia.", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "¿Cuál es la diferencia entre recuperación secundaria y terciaria?", score: 1, category_id: c.id)
Answer.create( answer: "En la recuperación secundaria de eleva la presión de reservorio, en la terciaria no", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "En la recuperación Terciaria se modifican las propiedades roca-fluido, en la secundaria no", is_correct: 1, question_id: q_p.id)
Answer.create( answer: "En ambas se eleva de presión de reservorio y las propiedades roca-fluido", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "¿Cuáles son las principales diferencias entre los yacimientos del Golfo y Vaca Muerta?", score: 1, category_id: c.id)
Answer.create( answer: "No hay diferencia significativa.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "Los valores de porosidad y permeabilidad son mejores en los yacimientos del Golfo.", is_correct: 1, question_id: q_p.id)
Answer.create( answer: "Los espesores de los reservorios son mayores en los yacimientos del Golfo.", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "¿Cuáles son los aspectos que debe cumplir una capa para ser inundable?", score: 1, category_id: c.id)
Answer.create( answer: "Debe ser continua, debe admitir y debe estar punzada.", is_correct: 1, question_id: q_p.id )
Answer.create( answer: "Cualquier capa puede ser inundable.", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "Tiene que tener valores de permeabilidad y porosidad adecuados.", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "¿Cuáles son los factores más importantes para la productividad de un reservorio?", score: 1, category_id: c.id)
Answer.create( answer: "Permeabilidad, Espesor, Viscosidad, Presión Estática y Daño.", is_correct: 1, question_id: q_p.id )
Answer.create( answer: "Porosidad, Sumergencia, Daño, Mojabilidad.", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "Punzado, Fractura, Daño y Perforación.", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "Si un reservorio produce 100% de agua es correcto decir que en el mismo hay solamente agua", score: 1, category_id: c.id)
Answer.create( answer: "Si.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "No.", is_correct: 1, question_id: q_p.id)
Answer.create( answer: "Depende de daño de formación.", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "Características del agua como fluido de inyección.", score: 1, category_id: c.id)
Answer.create( answer: "Está disponible a bajo costo, provee columna hidráulica y el bombearla es sencillo.", is_correct: 1, question_id: q_p.id )
Answer.create( answer: "El tratamiento químico es económico, provee columna hidráulica, pero bombearla es complicado.", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "No se produce agua suficiente y se debe inyectar agua dulce.", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "¿Cómo se dividen y subdividen los métodos EOR?", score: 1, category_id: c.id)
Answer.create( answer: "Térmicos y no térmicos.", is_correct: 1, question_id: q_p.id )
Answer.create( answer: "Geles, polímeros, combustión in situ.", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "Invasiones químicas y desplazamientos miscibles.", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "¿Por qué funciona tan bien la inyección de polímeros?", score: 1, category_id: c.id)
Answer.create( answer: "Porque el polímero soporta altas temperaturas.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "Porque eleva la viscosidad del agua de inyección y mejora el barrido.", is_correct: 1, question_id: q_p.id)
Answer.create( answer: "Porque produce una reacción química que favorece la movilidad del oil.", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "Criterios para establecer campos maduros.", score: 1, category_id: c.id)
Answer.create( answer: "Factor de agotamiento mayor al 75%.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "Relación agua petróleo mayor a 20.", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "Antigüedad de las instalaciones.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "Todas las anteriores.", is_correct: 1, question_id: q_p.id )

q_p = Question.create(question: "¿Cómo se llama la pieza del equipo perforador que rompe el suelo y las rocas, a medida que va perforando?", score: 1, category_id: c.id)
Answer.create( answer: "Tubing.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "Trépano.", is_correct: 1, question_id: q_p.id)
Answer.create( answer: "Bombeador.", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "¿Llamamos pozo surgente a aquel cuya producción?", score: 1, category_id: c.id)
Answer.create( answer: "Surge con la asistencia de un equipo de extracción.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "Surge sin asistencia.", is_correct: 1, question_id: q_p.id)
Answer.create( answer: "Surge solo cuando no tiene contenido de agua.", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "El tubo por el cual asciende habitualmente el petróleo desde fondo del pozo es el:", score: 1, category_id: c.id)
Answer.create( answer: "Choke.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "Tubing.", is_correct: 1, question_id: q_p.id)
Answer.create( answer: "Fitting.", is_correct: 0, question_id: q_p.id )

q_p = Question.create(question: "¿Qué destino se le da al agua de formación que viene asociada a la producción de petróleo? ", score: 1, category_id: c.id)
Answer.create( answer: "Se riega el campo.", is_correct: 0, question_id: q_p.id )
Answer.create( answer: "Se arroja al mar.", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "Se reinyecta a la formación.", is_correct: 1, question_id: q_p.id )

q_p = Question.create(question: "¿Qué condición facilita o mejora la circulación del petróleo por las cañerías de producción?", score: 1, category_id: c.id)
Answer.create( answer: "Aumento de la temperatura.", is_correct: 1, question_id: q_p.id )
Answer.create( answer: "Disminución de la temperatura.", is_correct: 0, question_id: q_p.id)
Answer.create( answer: "Es indistinto, la temperatura no afecta la circulación del petróleo.", is_correct: 0, question_id: q_p.id )

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


iapg = Question.create(question: "¿Cuál de estos sistemas de comunicación telefónica no es considerado riesgoso al momento de conducir un vehículo?", score: 1, category_id: m.id)
Answer.create( answer: "Opción A. Ya que al utilizar un sólo auricular la audición no se encuentra afectada.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "Opción B. Ya que al activar el mano libre las manos quedan disponibles para la conducción.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Ambos sistemas son riesgosos.", is_correct: 1, question_id: iapg.id )

iapg = Question.create(question: "La siguiente acción del conductor es riesgosa porque:", score: 1, category_id: m.id)
Answer.create( answer: "Disminuye su capacidad atencional, limita el sentido de la audición, reduce la capacidad de reacción y aumenta el tiempo necesario para responder ante un estímulo.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "El conductor debe mantener ambas manos comprometidas en la acción de conducir y al manipularlo, reduciría su capacidad para maniobrar.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Ambas respuestas, la A y la B, son correctas.", is_correct: 1, question_id: iapg.id )

iapg = Question.create(question: "La presente conducta, ¿es riesgosa al momento de conducir?", score: 1, category_id: m.id)
Answer.create( answer: "Sí, porque es considerado un factor de distracción.", is_correct: 1, question_id: iapg.id )
Answer.create( answer: "Únicamente si se circula a altas velocidades.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Al contrario, ayuda a mantener la atención en la conducción.", is_correct: 0, question_id: iapg.id )

iapg = Question.create(question: "La acción que se presenta en la imagen es considerada riesgosa para la conducción de un vehículo.", score: 1, category_id: m.id)
Answer.create( answer: "Verdadero", is_correct: 1, question_id: iapg.id )
Answer.create( answer: "Falso", is_correct: 0, question_id: iapg.id)

iapg = Question.create(question: "La acción que realiza el conductor en la imagen es riesgosa para la conducción.", score: 1, category_id: m.id)
Answer.create( answer: "Verdadero", is_correct: 1, question_id: iapg.id )
Answer.create( answer: "Falso", is_correct: 0, question_id: iapg.id)

iapg = Question.create(question: "Como conductor, ¿qué debe realizar frente a la siguiente situación?", score: 1, category_id: m.id)
Answer.create( answer: "Avanzar porque la luz verde del semáforo lo habilita.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "Detenerse y esperar a la indicación del agente de tránsito para avanzar.", is_correct: 1, question_id: iapg.id)
Answer.create( answer: "Avanzar sólo si no pasan vehículos en la intersección.", is_correct: 0, question_id: iapg.id )

iapg = Question.create(question: "Si al conducir un vehículo se encuentra en una intersección con esta señalización intermitente, ¿qué actitud debe tomar?", score: 1, category_id: m.id)
Answer.create( answer: "Tengo la obligación de detener la marcha y cuando no haya más vehículos circulando por la arteria que cruza, puedo reiniciarla.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "Al tener prioridad, debo atravesarla rápidamente para no obstaculizar la vía.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Efectuar el cruce con máxima precaución.", is_correct: 1, question_id: iapg.id )

iapg = Question.create(question: "Si al conducir un vehículo se encuentra en una intersección con esta señalización intermitente, ¿qué actitud debe tomar?", score: 1, category_id: m.id)
Answer.create( answer: "Detener la marcha y realizar el cruce cuando se tenga la certeza de que no existe riesgo alguno.", is_correct: 1, question_id: iapg.id )
Answer.create( answer: "Al tener prioridad, debo atravesarla rápidamente para no obstaculizar la vía.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Extremar precauciones al cruzar sin la necesidad de detenerme.", is_correct: 0, question_id: iapg.id )

iapg = Question.create(question: "¿Qué significa esta demarcación amarilla en la calzada?", score: 1, category_id: m.id)
Answer.create( answer: "Es una señalización que se utiliza únicamente para dividir los carriles de la vía.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "Indica, para ambos sentidos de circulación, que no debe ser traspasada ni se puede circular sobre ella.", is_correct: 1, question_id: iapg.id)
Answer.create( answer: "Significa que sólo pueden circular vehículos particulares.", is_correct: 0, question_id: iapg.id )

iapg = Question.create(question: "En la siguiente imagen, ¿Qué indican las líneas centrales de la calzada señaladas?", score: 1, category_id: m.id)
Answer.create( answer: "Que se pueden traspasar.", is_correct: 1, question_id: iapg.id )
Answer.create( answer: "Que está prohibido traspasarlas.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Que es una zona de máximo peligro.", is_correct: 0, question_id: iapg.id )

iapg = Question.create(question: "Según la Ley ¿Qué indica la siguiente demarcación horizontal?", score: 1, category_id: m.id)
Answer.create( answer: "Que está prohibido estacionar, pudiendo efectuarse la detención para ascenso y descenso de pasajeros.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "Que es un espacio reservado al estacionamiento exclusivo de vehículos destinados al servicio de emergencia.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Que está prohibido estacionar o detenerse paralelo al cordón.", is_correct: 1, question_id: iapg.id )

iapg = Question.create(question: "Según la Ley Nº 2148, ¿Qué indica la siguiente demarcación horizontal?", score: 1, category_id: m.id)
Answer.create( answer: "Que sólo está prohibido estacionar, pudiendo efectuarse detenciones.", is_correct: 1, question_id: iapg.id )
Answer.create( answer: "Que es un lugar reservado para el estacionamiento exclusivo de vehículos destinados al transporte de pasajeros.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Que está prohibido estacionar o detenerse al costado de la vereda.", is_correct: 0, question_id: iapg.id )

iapg = Question.create(question: "¿Cuál es la importancia del color de las señales viales?", score: 1, category_id: m.id)
Answer.create( answer: "El color es para llamar la atención al conductor de categoría particular.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "El color es irrelevante para el conductor particular pero sí para el conductor profesional.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "El color, además de su forma, brinda información al conductor sobre el trayecto de la vía por la cual circula.", is_correct: 1, question_id: iapg.id )

iapg = Question.create(question: "¿Qué indican las señales reglamentarias?", score: 1, category_id: m.id)
Answer.create( answer: "Advierten la proximidad de una circunstancia o variación de la normalidad de la vía que puede resultar sorpresiva o peligrosa a la circulación.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "Identifican, orientan y hacen referencia a servicios, lugares, etc.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Transmiten órdenes específicas, de cumplimiento obligatorio en el lugar para el cual están destinadas.", is_correct: 1, question_id: iapg.id )

iapg = Question.create(question: "¿Cuál de estas señales comunica “Prevención”?", score: 1, category_id: m.id)
Answer.create( answer: "La señal A.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "La señal B.", is_correct: 1, question_id: iapg.id)
Answer.create( answer: "La señal C.", is_correct: 0, question_id: iapg.id )

iapg = Question.create(question: "Frente a la siguiente situación de emergencia, ¿qué deben hacer los conductores que circulen en su proximidad?", score: 1, category_id: m.id)
Answer.create( answer: "Aumentar la velocidad para no ser un obstáculo a este vehículo.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "Avisar a otros conductores de la presencia de este vehículo, usando repetidamente la bocina.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Dar lugar a este vehículo, despejar el carril de emergencias y si fuera necesario detenerse.", is_correct: 1, question_id: iapg.id )

iapg = Question.create(question: "Al conducir un vehículo y llegar a esta intersección, ¿cómo debe proceder frente a esta señal?", score: 1, category_id: m.id)
Answer.create( answer: "Disminuir un poco la velocidad y mirar que no se acerquen vehículos por la vía a la que se va a incorporar.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "Reducir la velocidad y detener el vehículo antes de la senda peatonal.", is_correct: 1, question_id: iapg.id)
Answer.create( answer: "Avanzar", is_correct: 0, question_id: iapg.id )

iapg = Question.create(question: "En esta pendiente estrecha, ¿cuál de los dos vehículos tiene prioridad de paso?", score: 1, category_id: m.id)
Answer.create( answer: "El vehículo A.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "El vehículo B.", is_correct: 1, question_id: iapg.id)

iapg = Question.create(question: "El vehículo señalizado quiere incorporarse al tránsito, ¿tiene prioridad de paso sobre los otros vehículos que están circulando por esta arteria?", score: 1, category_id: m.id)
Answer.create( answer: "No, porque los vehículos de la arteria, a la que se pretende ingresar, están circulando.", is_correct: 1, question_id: iapg.id )
Answer.create( answer: "Sí, porque se encuentra a la derecha.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Sí, porque señalizó su maniobra.", is_correct: 0, question_id: iapg.id )

iapg = Question.create(question: "¿Cuáles de los siguientes vehículos NO se encuentran en infracción?", score: 1, category_id: m.id)
Answer.create( answer: "Los vehículos A y B.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "Los vehículos A y C.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Los vehículos B y C.", is_correct: 1, question_id: iapg.id )

iapg = Question.create(question: "El conductor del vehículo A quiere volver rápidamente al carril derecho porque ve ante él una situación de peligro, ¿qué debe hacer el conductor del vehículo B?", score: 1, category_id: m.id)
Answer.create( answer: "Aumentar la velocidad para que realice la maniobra detrás suya.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "Reducir la velocidad para facilitarle el retorno al carril.", is_correct: 1, question_id: iapg.id)
Answer.create( answer: "Tocar bocina y hacer guiño de luces para indicarle que no debe realizar la maniobra.", is_correct: 0, question_id: iapg.id )

iapg = Question.create(question: "Cuando varios vehículos circulan encolumnados, ¿Cuál de ellos tiene prioridad para realizar el sobrepaso?", score: 1, category_id: m.id)
Answer.create( answer: "El que lo intente primero.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "El último de la fila.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "El que circula más próximo al vehículo que se desea sobrepasar.", is_correct: 1, question_id: iapg.id )

iapg = Question.create(question: "En una vía de doble sentido de circulación, ¿qué deberá comprobar antes de iniciar un sobrepaso?", score: 1, category_id: m.id)
Answer.create( answer: "Que el vehículo que antecede, no tenga las luces intermitentes encendidas y que ningún vehículo circule en sentido contrario, mientras dure la maniobra de sobrepaso.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "Que ningún otro vehículo esté realizando la maniobra de sobrepaso.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Ambas respuestas, A y B, son correctas.", is_correct: 1, question_id: iapg.id )

iapg = Question.create(question: "¿Qué significa esta señal?", score: 1, category_id: m.id)
Answer.create( answer: "Circulación exclusiva de autos.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "Precaución bicicleta.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Prohibido circular bicicletas.", is_correct: 0, question_id: iapg.id )

iapg = Question.create(question: "¿A que se denomina punto ciego en los vehículos?", score: 1, category_id: m.id)
Answer.create( answer: "Es el área de visión no cubierta por los espejos retrovisores.", is_correct: 1, question_id: iapg.id )
Answer.create( answer: "Es el área de visión cubierta por los espejos retrovisores.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Es el área de visión no cubierta por el parabrisas.", is_correct: 0, question_id: iapg.id )

iapg = Question.create(question: "Para los ciclistas, ¿es obligatorio el uso de casco?", score: 1, category_id: m.id)
Answer.create( answer: "Si", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "Mo", is_correct: 1, question_id: iapg.id)
Answer.create( answer: "Da igual", is_correct: 0, question_id: iapg.id )

iapg = Question.create(question: "¿Cuál es la velocidad máxima en ciudad para un automóvil en calles?", score: 1, category_id: m.id)
Answer.create( answer: "40km/h.", is_correct: 1, question_id: iapg.id )
Answer.create( answer: "50km/h.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "60km/h", is_correct: 0, question_id: iapg.id )

iapg = Question.create(question: "Esta señal advierte que en el lugar ocurrió un siniestro vial que produjo una víctima fatal.", score: 1, category_id: m.id)
Answer.create( answer: "Verdadero", is_correct: 1, question_id: iapg.id )
Answer.create( answer: "Falso", is_correct: 0, question_id: iapg.id)

iapg = Question.create(question: "Al conducir sobre una calzada en estas condiciones, la distancia de frenado será...", score: 1, category_id: m.id)
Answer.create( answer: "Igual que cuando la calzada se encuentra seca.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "Menor que cuando la calzada se encuentra seca.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "Mayor que cuando la calzada se encuentra seca.", is_correct: 1, question_id: iapg.id )

iapg = Question.create(question: "¿En qué caso deberán utilizarse estas luces?", score: 1, category_id: m.id)
Answer.create( answer: "Únicamente de noche y por una vía sin asfaltar.", is_correct: 0, question_id: iapg.id )
Answer.create( answer: "Sólo por vías sin banquina.", is_correct: 0, question_id: iapg.id)
Answer.create( answer: "En vías afectadas por niebla, en cualquier horario.", is_correct: 1, question_id: iapg.id )

# iapg = Question.create(question: "pokemon", score: 1, category_id: m.id)
# Answer.create( answer: "Meowth", is_correct: 1, question_id: f.id )
# Answer.create( answer: "Mew", is_correct: 0, question_id: f.id)
# Answer.create( answer: "Mewtwo", is_correct: 0, question_id: f.id )






