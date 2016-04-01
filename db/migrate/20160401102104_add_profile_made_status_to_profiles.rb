class AddProfileMadeStatusToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :profile_made, :boolean, default: false
  end
end
