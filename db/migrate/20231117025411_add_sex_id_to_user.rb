class AddSexIdToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :sex_id, :integer
  end
end
