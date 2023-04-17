class AddColumnTiesToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :ties, :integer
  end
end
