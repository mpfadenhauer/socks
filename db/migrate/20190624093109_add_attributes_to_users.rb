class AddAttributesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :rating, :integer
    add_column :users, :location, :string
  end
end
