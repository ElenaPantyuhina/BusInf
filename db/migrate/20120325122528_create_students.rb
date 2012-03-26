class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :student_surname, :maxlength => 30
      t.string :student_name, :maxlength => 20
      t.string :student_secondname, :maxlength => 30
      t.integer :student_group

      t.timestamps
    end
  end

  def self.down
    BusInf_table :students
  end
end
