class BookingsController < ApplicationController


  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.toy = Toy.find(params[:toy_id])
    @booking.status = "pending"
    if @booking.save
      redirect_to @booking.toy
    else
      render "toys/show"
    end
  end


  def update
    @booking = Booking.find(params[:id])
    if params[:execute]
      @booking.status = params[:execute]
      @booking.save
      redirect_to dashboard_path
    end
  end



private

  def booking_params
    params.require(:booking).permit(:name, :address, :start_date, :end_date)
  end

end
