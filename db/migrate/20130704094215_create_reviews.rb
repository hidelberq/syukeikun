class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :total

      t.timestamps
    end
  end
end
