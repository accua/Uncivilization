class AddUserNationRelationship < ActiveRecord::Migration[5.0]
  def change
    add_column :nations, :user_id, :integer
    add_column :nations, :stability, :integer
    add_column :nations, :population, :integer
    add_column :nations, :capital, :integer
  end
end
