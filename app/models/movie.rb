class Movie < ActiveRecord::Base
  attr_accessible :title

  belongs_to :screening
end
