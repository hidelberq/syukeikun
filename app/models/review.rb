class Review < ActiveRecord::Base
  attr_accessible :total

  belongs_to :user
  belongs_to :movie
end
