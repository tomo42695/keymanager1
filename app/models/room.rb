class Room < ActiveRecord::Base
  has_many :rentals
end
