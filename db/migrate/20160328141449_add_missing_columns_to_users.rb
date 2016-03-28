class AddMissingColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city, :string
    add_column :users, :postal_code, :string
    add_column :users, :average_rating, :integer
    add_column :users, :stallion_owner, :boolean
  end
end
