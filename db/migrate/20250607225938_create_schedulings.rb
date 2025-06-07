class CreateSchedulings < ActiveRecord::Migration[8.0]
  def change
    create_table :schedulings do |t|
      t.datetime :beginning, null:false
      t.datetime :end, null:false
      t.decimal :value, precision: 10, scale: 2, default:0.0
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
