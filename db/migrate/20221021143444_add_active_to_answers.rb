class AddActiveToAnswers < ActiveRecord::Migration[7.0]
  def change
    add_column :answers, :active, :boolean, default: true
  end
end
