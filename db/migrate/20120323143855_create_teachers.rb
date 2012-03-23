class CreateTeachers < ActiveRecord::Migration
  def self.up
    create_table :teachers do |t|
      t.string :name
      t.string :secondname
      t.string :surname
      t.integer :cathedra

      t.timestamps
    end
  end

  def self.down
    BusInf_table :teachers
  end
end
