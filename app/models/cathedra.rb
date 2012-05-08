class Cathedra < ActiveRecord::Base
  has_many :specialties
  has_many :teachers
  validates :cath_name, :length => { :maximum => 100}
  validates_length_of :cath_head, :cath_secretary, :maximum => 65
  validates_length_of :cath_cabinet, :maximum => 7
  validates_length_of :cath_phone, :maximum => 8, :message => "Phone must by from 6 numbers"
end
