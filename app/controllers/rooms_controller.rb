class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
    @booking = Booking.new
  end

  private

  def set_params
    params.require(:room).permit(:price_per_night, :capacity)
  end
end
