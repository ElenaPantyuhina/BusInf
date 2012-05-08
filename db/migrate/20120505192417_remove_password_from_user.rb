class RemovePasswordFromUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :user_password
  end
end
