class AddSillyServicesToStallions < ActiveRecord::Migration
  def change
    add_column :stallions, :sperm_only, :boolean
    add_column :stallions, :stabling, :boolean
    add_column :stallions, :owner_bed, :boolean
    add_column :stallions, :shooting, :boolean
    add_column :stallions, :malt_whisky, :boolean
  end
end
