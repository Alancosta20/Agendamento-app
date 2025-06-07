class CreateCustomerAnamneses < ActiveRecord::Migration[8.0]
  def change
    create_table :customer_anamneses do |t|
      t.references :anamnesis, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
