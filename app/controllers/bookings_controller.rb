class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @room = Room.find(params[:room_id])
    @booking = Booking.new(booking_params)
    @booking.room = @room
    if @booking.save
      redirect_to room_path(@room)
    else
      redirect_to room_path(@room), status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
