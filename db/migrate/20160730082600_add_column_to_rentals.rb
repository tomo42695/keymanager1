class AddColumnToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :video, :text
  end
end
