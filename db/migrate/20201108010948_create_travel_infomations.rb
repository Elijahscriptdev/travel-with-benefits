class CreateTravelInfomations < ActiveRecord::Migration[6.0]
  def change
    create_table :travel_infomations do |t|
      t.string :title
      t.string :travel_from
      t.string :travel_to
      t.string :travel_date
      t.string :bus_type
      t.string :departing_time
      t.integer :seat_available
      t.integer :price
      t.string :availability
      t.string :company_name
      t.string :takeoff_location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
