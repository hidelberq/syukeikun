class Review < ActiveRecord::Base
  attr_accessible :total, :movie_id, :comment, :camera, :edit, :performance, :script

  belongs_to :user
  belongs_to :movie
end
