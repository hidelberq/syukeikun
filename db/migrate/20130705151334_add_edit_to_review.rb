class AddEditToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :edit, :integer
  end
end
