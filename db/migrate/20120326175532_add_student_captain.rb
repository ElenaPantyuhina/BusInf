class AddStudentCaptain < ActiveRecord::Migration
  def self.up
    add_column :students, :student_captain, :boolean, :default => false
  end

  def self.down
    remove_column :students, :student_captain
  end
end
