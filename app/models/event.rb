class Event < ActiveRecord::Base
  has_many :nations, through: :responses
  has_many :responses
end
