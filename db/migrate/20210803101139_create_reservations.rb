class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :truck, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.integer :total_price

      t.timestamps
    end
  end
end
