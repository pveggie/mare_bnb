class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.date :date
      t.references :stallion, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
