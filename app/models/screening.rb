class Screening < ActiveRecord::Base
  attr_accessible :nth, :subtitle

  has_many :movies
end
