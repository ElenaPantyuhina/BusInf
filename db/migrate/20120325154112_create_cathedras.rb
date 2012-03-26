class CreateCathedras < ActiveRecord::Migration
  def self.up
    create_table :cathedras do |t|
      t.string :cath_name
      t.string :cath_head
      t.string :cath_secretary
      t.string :cath_cabinet
      t.string :cath_phone

      t.timestamps
    end
  end
  def self.down
    BusInf_table :cathedras
  end
end
