class CreateNations < ActiveRecord::Migration[5.0]
  def change
    create_table :nations do |t|
      t.column :nation_name, :string
      t.column :economy_type, :string
      t.column :basic_geography, :string
      t.column :religion, :string
    end
  end
end
