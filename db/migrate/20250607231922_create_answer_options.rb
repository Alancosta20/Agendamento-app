class CreateAnswerOptions < ActiveRecord::Migration[8.0]
  def change
    create_table :answer_options do |t|
      t.text :description
      t.references :customer_anamnesis, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
