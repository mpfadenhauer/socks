class ChangeSizesForSock < ActiveRecord::Migration[5.2]
  def change
    remove_column :socks, :min_size
    remove_column :socks, :max_size
    add_column :socks, :size, :string

  end
end
