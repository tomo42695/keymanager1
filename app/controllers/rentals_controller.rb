class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
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

  private
  def create_params
    params.require(:rental).permit(:room_id, :door_state, :rent_time, :return_time, :groupname).merge(user_id: current_user.id)
  end
end
