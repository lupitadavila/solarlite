class CreatePresales < ActiveRecord::Migration[5.0]
  def change
    create_table :presales do |t|
      t.string :first_name
      t.string :zip_code
      t.integer :bill
      t.integer :desired_bill

      t.timestamps
    end
  end
end
