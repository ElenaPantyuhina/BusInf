class RemoveLoginFromUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :user_login
    add_column :users, :user_status, :string
  end

  def self.down
    remove_column :users, :user_status
  end

end
