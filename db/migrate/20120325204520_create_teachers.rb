class CreateTeachers < ActiveRecord::Migration
  def self.up
    create_table :teachers do |t|
      t.string :teach_name
      t.string :teach_secondname
      t.string :teach_surname
      t.integer :teach_cathedra

      t.timestamps
    end
  end
  def self.down
    BusInf_table :teachers
  end
end
