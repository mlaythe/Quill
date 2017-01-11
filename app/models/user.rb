class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5 }
  validates :password, presence: true, length: { minimum: 5 }
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
