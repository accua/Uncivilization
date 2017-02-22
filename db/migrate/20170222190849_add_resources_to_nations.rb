class AddResourcesToNations < ActiveRecord::Migration[5.0]
  def change
    add_column :nations, :lumber, :integer
    add_column :nations, :oil, :integer
    add_column :nations, :minerals, :integer
    add_column :nations, :metal, :integer
  end
end
