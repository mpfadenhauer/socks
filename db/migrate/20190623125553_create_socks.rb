class CreateSocks < ActiveRecord::Migration[5.2]
  def change
    create_table :socks do |t|
      t.string :title
      t.string :description
      t.string :color
      t.string :pattern
      t.integer :min_size
      t.integer :max_size
      t.string :type
      t.string :brand
      t.string :season
      t.integer :age
      t.float :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
