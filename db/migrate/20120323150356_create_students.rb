class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :name
      t.string :secondname
      t.string :surname
      t.integer :group

      t.timestamps
    end
  end

  def self.down
    BusInf_table :students
  end
end
