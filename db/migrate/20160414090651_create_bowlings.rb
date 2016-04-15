class CreateBowlings < ActiveRecord::Migration
  def change
    create_table :bowlings do |t|
      t.integer :score
      t.integer :first_roll
      t.integer :second_roll

      t.timestamps null: false
    end
  end
end
