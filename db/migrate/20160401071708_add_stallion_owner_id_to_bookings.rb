class AddStallionOwnerIdToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :stallion_owner_id, :integer
  end
end
