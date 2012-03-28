class Specialty < ActiveRecord::Base
  has_many :groups
  belongs_to :cathedra
end
