class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :user_surname, :null => false
      t.string :user_name, :null => false
      t.string :user_secondname, :null => false
      t.string :user_login, :null => false
      t.string :user_password, :null => false
      t.string :user_email, :null => false
      t.string :user_icq

      t.timestamps
    end
  end
  def self.down
    BusInf_table :users
  end
end
