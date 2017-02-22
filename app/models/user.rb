class User < ApplicationRecord
  has_many :nations
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
