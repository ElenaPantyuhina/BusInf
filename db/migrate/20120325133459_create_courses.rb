class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.integer :numder

      t.timestamps
    end
  end
  def self.down
    BusInf_table :courses
  end
end
