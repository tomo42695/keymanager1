class AddGroupnameToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :groupname, :string
  end
end
