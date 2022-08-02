class User < ApplicationRecord
  has_secure_password 
  validates :username, presence: true, 
    uniqueness: { case_sensitive: false, message: "Nombre de usuario en uso" }, 
    length: { minimum: 4 }
  validates :email, uniqueness: { case_sensitive: false, message: "Email en uso" }, allow_blank: true
  validates :password, presence: true, length: { minimum: 6 }
  
  before_save :format_attributes
  private
  def format_attributes
    self.username = username.downcase.capitalize
    self.email = email.downcase
  end
end
