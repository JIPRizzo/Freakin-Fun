class ToysController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @toys = Toy.where() #correct ActiveRecord/SQL query
  end

  def new
    @toy = Toy.new
  end

  def show
    # params[:toy_id]
    @toy = Toy.find(params[:id])
    @booking = Booking.new
  end

end

