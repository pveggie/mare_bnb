class CreateStallions < ActiveRecord::Migration
  def change
    create_table :stallions do |t|
      t.string :name
      t.date :date_of_birth
      t.string :category
      t.string :breed
      t.references :user, index: true, foreign_key: true
      t.integer :average_rating
      t.string :image
      t.string :town
      t.string :country

      t.timestamps null: false
    end
  end
end
