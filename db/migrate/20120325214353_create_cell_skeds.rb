class CreateCellSkeds < ActiveRecord::Migration
  def self.up
    create_table :cell_skeds do |t|
      t.integer :number_pair
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
  def self.down
    BusInf_table :cell_skeds
  end
end
