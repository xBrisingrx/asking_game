letter = "A"
puts "Creando categoria"
Category.create(name: "Pokemon")
puts "Creando usuario"
User.create(username: 'mauro', email: 'mauro@dev.com', password: 'asdasd', admin: true)
puts "Creando preguntas y respuestas"
20.times do |t| 
  q = Question.create(question: "Pregunta #{letter}", score: 1, category_id: 1)
  4.times do |p|
    a = Answer.new( answer: "Respuesta #{p}" )
    a.question = q 
    a.is_correct = (p == 2)
    a.save
  end
  letter.next!
end
