class RemoveNationIdResponses < ActiveRecord::Migration[5.0]
  def change
    remove_column :responses, :nation_id
  end
end
