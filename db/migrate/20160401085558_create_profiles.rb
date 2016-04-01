class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :last_name
      t.string :title
      t.integer :net_worth
      t.string :estate
      t.string :town
      t.string :country
      t.boolean :stallion_owner
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
