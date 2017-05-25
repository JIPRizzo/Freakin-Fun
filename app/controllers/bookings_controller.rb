class BookingsController < ApplicationController


  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
    @alert_message = "You are viewing #{@booking.name}"
    @booking_coordinates = { lat: @booking.latitude, lng: @booking.longitude }

  end



   def show
    @flat = Flat.find(params[:id])
    @flat_coordinates = { lat: @flat.latitude, lng: @flat.longitude }
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.toy = Toy.find(params[:toy_id])
    if @booking.save
      redirect_to @booking.toy
    else
      render "toys/show"
  end
 end


private

  def booking_params
    params.require(:booking).permit(:name, :address, :start_date, :end_date)
  end

end
