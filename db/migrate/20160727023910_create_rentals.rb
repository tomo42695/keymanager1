class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :user_id
      t.boolean :door_state
      t.integer :room_id
      t.time :rent_time
      t.time :return_time
      t.timestamps
    end
  end
end
