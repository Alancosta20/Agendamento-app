class CreateServices < ActiveRecord::Migration[8.0]
  def change
    create_table :services do |t|
      t.string :name
      t.decimal :value, precision: 10, scale: 2
      t.time :duration
      t.text :description 
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
