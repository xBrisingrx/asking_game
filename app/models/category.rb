class Category < ApplicationRecord
  has_many :questions
  has_many :games
  has_one_attached :image

  validates :name, presence: true
end
