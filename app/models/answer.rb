class Answer < ApplicationRecord
  belongs_to :question
  validates :answer, presence: true

  scope :actives, -> { where(active: true) }
end
