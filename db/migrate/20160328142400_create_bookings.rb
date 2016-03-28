class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :stallion, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :mo_rating
      t.text :mo_review
      t.integer :so_rating
      t.text :so_review

      t.timestamps null: false
    end
  end
end
