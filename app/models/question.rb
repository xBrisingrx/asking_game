class Question < ApplicationRecord
  belongs_to :category
  has_many :answers
  has_one_attached :image

  validates :question, presence: true
end
