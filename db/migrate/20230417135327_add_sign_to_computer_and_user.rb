class AddSignToComputerAndUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :signcross, :string
    add_column :computers, :signround, :string
  end
end
