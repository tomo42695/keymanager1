class RentalsController < ApplicationController
  def index
    @rentals = Rental.all.order(created_at: :desc)
    @rentals_name = []
    @rentals.each do |rental|
      room_id = rental.room_id
      room_name = Room.find(room_id).room_name
      @rentals_name << room_name
    end
  end

  def new
    @rental = Rental.new
  end

  def create
    rental = Rental.create(create_params)
  end

  def destroy
    rental = Rental.find(params[:id])
    if rental.user_id == current_user.id
      rental.destroy
    end
  end

  def edit
    @rental = Rental.find(params[:id])
  end

  def returning
    @rental = Rental.find(params[:id])
  end

  def update
    rental = Rental.find(params[:id])
    if rental.user_id == current_user.id
      rental.update(rental_params)
    end
  end


  private
  def create_params
    params.require(:rental).permit(:room_id, :door_state, :rent_time, :return_time, :groupname).merge(user_id: current_user.id)
  end

  private
  def rental_params
    params.require(:rental).permit(:room_id, :door_state, :rent_time, :return_time, :groupname)
  end
end
