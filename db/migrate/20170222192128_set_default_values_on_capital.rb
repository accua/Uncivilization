class SetDefaultValuesOnCapital < ActiveRecord::Migration[5.0]
  def change
    change_column :nations, :capital, :integer, default: 0
  end
end
