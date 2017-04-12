class CreateFinances < ActiveRecord::Migration[5.0]
  def change
    create_table :finances do |t|
      t.integer :savings
      t.integer :user_id

      t.timestamps
    end
  end
end
