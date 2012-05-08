class CreateSpecialties < ActiveRecord::Migration
  def self.up
    create_table :specialties do |t|
      t.string :spec_name, :size => 100
      t.string :spec_reduction, :length => 5
      t.integer :spec_cathedra
      t.string :spec_description

      t.timestamps
    end
  end
  def self.down
    BusInf_table :specialties
  end
end
