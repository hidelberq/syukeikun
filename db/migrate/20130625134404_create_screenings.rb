class CreateScreenings < ActiveRecord::Migration
  def change
    create_table :screenings do |t|
      t.integer :nth
      t.string :subtitle

      t.timestamps
    end
  end
end
