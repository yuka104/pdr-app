class User < ApplicationRecord
  
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze }
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
