class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.integer :gr_specialty, :null => false
      t.integer :gr_course, :null => false
      t.string :gr_cipher, :null => false
      t.integer :gr_quantity

      t.timestamps
    end
  end
  def self.down
    BusInf_table :groups
  end
end
