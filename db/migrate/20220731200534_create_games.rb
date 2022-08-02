class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :player, null:false
      t.integer :score, default: 0
      t.string :email
      t.references :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
