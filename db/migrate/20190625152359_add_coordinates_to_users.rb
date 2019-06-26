class AddCoordinatesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :latitude, :float
    add_column :users, :longtiude, :float
  end
end
