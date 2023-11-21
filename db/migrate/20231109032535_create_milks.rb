class CreateMilks < ActiveRecord::Migration[7.0]
  def change
    create_table :milks do |t|
      t.integer    :condition_id, null: false
      t.integer    :amount_id
      t.time       :time,         null: false
      t.references :user,         null: false, foreign_key: true
      t.timestamps
    end
  end
end