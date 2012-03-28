class Group < ActiveRecord::Base
  has_many :students
  belongs_to :specialty
  belongs_to :course

end
