class SetDefaultValuesOnNation < ActiveRecord::Migration[5.0]
  def change
    change_column :nations, :population, :integer, default: 1000000
    change_column :nations, :stability, :integer, default: 0
    change_column :nations, :minerals, :integer, default: 0
    change_column :nations, :lumber, :integer, default: 0
    change_column :nations, :oil, :integer, default: 0
    change_column :nations, :metal, :integer, default: 0
  end
end
