class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.boolean :isAdmin, default: false

      t.timestamps
    end
  end
end
