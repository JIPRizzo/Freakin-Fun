class ToysController < ApplicationController
  skip_before_action :authenticate_user!





  def new
    @toy = Toy.new
  end

  def show
    # params[:toy_id]
    @toy = Toy.find(params[:id])
    @booking = Booking.new
  end



#---------------------------------------------------------------#

  def index
    @toys = Toy.all
  end

# Pseudo code #
# index - list of available toys is defined as result of two dates
# for purposes of this user journey  toy.all = index




end







