class AddWinnerToGame < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :winner, :text, array: true, default: []
  end
end
