class GameAnswer < ApplicationRecord
  belongs_to :game
  belongs_to :question
  belongs_to :answer

  after_create :verify_answer

  def verify_answer
    if self.answer.is_correct?
      self.game.update(score: self.game.score + self.question.score )
    end
  end

  def question_not_used
    game = self.game 
    question_array = game.game_answers.pluck(:question_id)
    Question.select(:id, :question, :category_id).where(category_id: game.category_id)
      .where.not(id: question_array)
      .order("RAND()").first 
  end

  def count_answers
    GameAnswer.where(game_id: self.game_id).count
  end
end
