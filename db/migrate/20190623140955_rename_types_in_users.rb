class RenameTypesInUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :socks, :type, :sock_type

  end
end
