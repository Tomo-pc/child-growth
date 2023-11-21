class AddChilNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :child_name, :string
  end
end
