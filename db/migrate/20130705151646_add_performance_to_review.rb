class AddPerformanceToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :performance, :integer
  end
end
