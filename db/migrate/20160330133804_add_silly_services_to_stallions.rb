class AddSillyServicesToStallions < ActiveRecord::Migration
  def change
    add_column :stallions, :sperm_only, :boolean, default: true
    add_column :stallions, :stabling, :boolean, default: true
    add_column :stallions, :owner_bed, :boolean, default: true
    add_column :stallions, :shooting, :boolean, default: true
    add_column :stallions, :malt_whisky, :boolean, default: true
  end
end
