class CreateOptions < ActiveRecord::Migration[8.0]
  def change
    create_table :options do |t|
      t.text :title
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
