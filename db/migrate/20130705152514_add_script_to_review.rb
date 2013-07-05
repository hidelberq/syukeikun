class AddScriptToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :script, :integer
  end
end
