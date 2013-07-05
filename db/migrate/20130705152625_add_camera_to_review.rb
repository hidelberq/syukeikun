class AddCameraToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :camera, :integer
  end
end
