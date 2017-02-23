class Response < ActiveRecord::Base
  has_many :events
  has_many :nations
end
