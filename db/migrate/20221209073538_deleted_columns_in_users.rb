class DeletedColumnsInUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :name
    remove_column :users, :username
    remove_column :users, :address
    remove_column :users, :phone_number
  end
end
