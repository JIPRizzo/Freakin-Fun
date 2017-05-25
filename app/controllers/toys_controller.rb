class ToysController < ApplicationController
  skip_before_action :authenticate_user!


  def index
    @toys = Toy.all
  end

  def show
    # params[:toy_id]
    @toy = Toy.find(params[:id])
    @booking = Booking.new
  end


  def new
    @toy = Toy.new
  end

  def create
    @toy = Toy.new(toy_params)
    @toy.user = current_user
    if @toy.save
      redirect_to @toy
    else
      render :new
    end
  end


  private

  def toy_params
    params.require(:toy).permit(:name, :description, :price_cents, :image)
  end


end







