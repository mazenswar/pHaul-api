class CreateTrucks < ActiveRecord::Migration[6.1]
  def change
    create_table :trucks do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :image
      t.string :vin
      t.integer :hourly_rate

      t.timestamps
    end
  end
end
