class CreateServiceSchedulings < ActiveRecord::Migration[8.0]
  def change
    create_table :service_schedulings do |t|
      t.references :service, null: false, foreign_key: true
      t.references :scheduling, null: false, foreign_key: true

      t.timestamps
    end
  end
end
