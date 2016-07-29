class RentalsController < ApplicationController
  def index
    # @rental = Rental.find(params[:id])
    # @user = User.find(params[:id])
  end

  def new
    @rental = Rental.new
  end

  def create
    Rental.create(create_params)
  end

  private
  def create_params
    params.require(:rental).permit(:room_id, :door_state, :rent_time, :return_time, :groupname).merge(user_id: current_user.id)
  end
end
