class CreateRanks < ActiveRecord::Migration[5.0]
  def change
    create_table :ranks do |t|
      t.integer :points
      t.integer :user_id

      t.timestamps
    end
  end
end
