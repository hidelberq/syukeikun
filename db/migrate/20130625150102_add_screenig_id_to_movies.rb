class AddScreenigIdToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :screening_id, :integer
    add_index :movies, :screening_id
  end
end
