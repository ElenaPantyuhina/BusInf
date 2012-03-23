class Student < ActiveRecord::Base
  validates_presence_of :name, :secondname, :surname
  validates_numericality_of :group
end
