class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.integer :model_id
      t.string :name
      t.integer :price

      t.timestamps
    end
  end

  def self.down
    drop_table :cars
  end
end
