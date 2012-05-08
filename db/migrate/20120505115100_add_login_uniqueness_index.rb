class AddLoginUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :users, :user_login, :unique => true
  end

  def self.down
    remove_index :users, :user_login
  end
end
