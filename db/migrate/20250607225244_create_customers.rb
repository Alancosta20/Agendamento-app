class CreateCustomers < ActiveRecord::Migration[8.0]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :phone
      t.string :cpf
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
