class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :type
      t.references :user, foreign_key: true
      t.references :sock, foreign_key: true

      t.timestamps
    end
  end
end
