class CreateQuestions < ActiveRecord::Migration[8.0]
  def change
    create_table :questions do |t|
      t.text :title
      t.references :anamnesis, null: false, foreign_key: true

      t.timestamps
    end
  end
end
