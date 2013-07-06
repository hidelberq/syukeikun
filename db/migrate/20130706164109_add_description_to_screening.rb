class AddDescriptionToScreening < ActiveRecord::Migration
  def change
    add_column :screenings, :description, :string
  end
end
