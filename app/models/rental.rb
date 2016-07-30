class Rental < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user_id, :room_id, :door_state
end
