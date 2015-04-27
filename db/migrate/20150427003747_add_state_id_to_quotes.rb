class AddStateIdToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :state_id, :integer
    add_index :quotes, :state_id
  end
end
