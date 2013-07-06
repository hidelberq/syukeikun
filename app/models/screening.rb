class Screening < ActiveRecord::Base
  attr_accessible :nth, :subtitle, :description

  has_many :movies
end
