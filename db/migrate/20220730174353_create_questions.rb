class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :question, null: false
      t.integer :score, default: 1
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
