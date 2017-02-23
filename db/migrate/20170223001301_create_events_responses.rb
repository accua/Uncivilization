class CreateEventsResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.column :content, :string
    end
    create_table :responses do |t|
      t.column :event_id, :integer
      t.column :nation_id, :integer
      t.column :content, :string
      t.column :population, :integer
      t.column :lumber, :integer
      t.column :stability, :integer
      t.column :metal, :integer
      t.column :oil, :integer
      t.column :capital, :integer
      t.column :minerals, :integer
    end
  end
end
