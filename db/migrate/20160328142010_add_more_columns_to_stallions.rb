class AddMoreColumnsToStallions < ActiveRecord::Migration
  def change
    add_column :stallions, :lineage, :string
    add_column :stallions, :description, :text
    add_column :stallions, :colour, :string
  end
end
