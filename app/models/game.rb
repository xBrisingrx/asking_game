class Game < ApplicationRecord
  has_many :game_answers
  belongs_to :category
  has_many :answers, through: :game_answers

  validates :player, presence: true
  validates :category, presence: true
  validates :score, numericality: { only_integer: true }

  def correct_answers
    self.answers.where(is_correct: true).count
  end

  def wrong_answers
    self.answers.where(is_correct: false).count
  end

end
