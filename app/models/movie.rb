class Movie < ActiveRecord::Base
  attr_accessible :title, :description

  belongs_to :screening
  has_many :reviews
end
