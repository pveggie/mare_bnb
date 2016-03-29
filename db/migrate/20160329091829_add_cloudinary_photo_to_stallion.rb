class AddCloudinaryPhotoToStallion < ActiveRecord::Migration
  def change
    add_column :stallions, :photo, :string
  end
end
