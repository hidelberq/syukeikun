class Movie < ActiveRecord::Base
  attr_accessible :title

  belongs_to :screening
  has_many :reviews
end
