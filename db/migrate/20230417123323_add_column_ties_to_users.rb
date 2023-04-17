class AddColumnTiesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :ties, :integer
    add_column :users, :win, :integer
    add_column :users, :lose, :integer
  end
end
