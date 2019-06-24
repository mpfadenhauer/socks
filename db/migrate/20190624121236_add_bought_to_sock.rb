class AddBoughtToSock < ActiveRecord::Migration[5.2]
  def change
    add_column :socks, :bought, :boolean, default: false
  end
end
