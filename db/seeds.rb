
c = Category.create(name: "Pokemon")
User.create(username: 'cody', email: 'cody@cf.com', password: 'facilito', admin: true)

a = Question.create(question: "Cual es el tipo de pokemon de Pikachu?", score: 1, category_id: c.id)
Answer.create( answer: "Fuego", is_correct: false, question_id: a.id )
Answer.create( answer: "Agua", is_correct: false, question_id: a.id )
Answer.create( answer: "Electrico", is_correct: true, question_id: a.id )
Answer.create( answer: "Normal", is_correct: false, question_id: a.id )

b = Question.create(question: "De que pueblo es Ash?", score: 1, category_id: c.id)
Answer.create( answer: "Plateada", is_correct: false, question_id: b.id )
Answer.create( answer: "Paleta", is_correct: true, question_id: b.id)
Answer.create( answer: "Azulona", is_correct: false, question_id: b.id )
Answer.create( answer: "Carmin", is_correct: false, question_id: b.id )

j = Question.create(question: "Cual es la evolucion de Charmander?", score: 1, category_id: c.id)
Answer.create( answer: "Metapod", is_correct: false, question_id: j.id )
Answer.create( answer: "Pidgeotto", is_correct: false, question_id: j.id)
Answer.create( answer: "Raichu", is_correct: false, question_id: j.id )
Answer.create( answer: "Charmeleon", is_correct: true, question_id: j.id )

d = Question.create(question: "A que pokemon evoluciona Eevee con la piedra agua?", score: 1, category_id: c.id)
Answer.create( answer: "Flareon", is_correct: false, question_id: d.id )
Answer.create( answer: "Espeon", is_correct: false, question_id: d.id)
Answer.create( answer: "Jolteon", is_correct: false, question_id: d.id )
Answer.create( answer: "Vaporeon", is_correct: true, question_id: d.id )

e = Question.create(question: "Cual es el primer pokemon legendario que ve Ash?", score: 1, category_id: c.id)
Answer.create( answer: "Articuno", is_correct: false, question_id: e.id )
Answer.create( answer: "Zapdos", is_correct: false, question_id: e.id)
Answer.create( answer: "Moltres", is_correct: false, question_id: e.id )
Answer.create( answer: "Ho-Oh", is_correct: true, question_id: e.id )

f = Question.create(question: "Cual es el primer pokemon del equipo Rocket?", score: 1, category_id: c.id)
Answer.create( answer: "Meowth", is_correct: true, question_id: f.id )
Answer.create( answer: "Mew", is_correct: false, question_id: f.id)
Answer.create( answer: "Mewtwo", is_correct: false, question_id: f.id )
Answer.create( answer: "No tienen pokemon", is_correct: false, question_id: f.id )

