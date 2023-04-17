class AddArrayToGame < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :array, :text, array: true, default: []
  end
end
