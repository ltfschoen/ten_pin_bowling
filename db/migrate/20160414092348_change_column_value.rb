class ChangeColumnValue < ActiveRecord::Migration
  def change
    change_column :bowlings, :score, :integer, default: 0
    change_column :bowlings, :first_roll, :integer, default: 0
    change_column :bowlings, :second_roll, :integer, default: 0
  end
end
