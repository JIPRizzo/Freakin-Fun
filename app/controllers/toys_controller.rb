class ToysController < ApplicationController

  def index
    @toys = Toy.where() #correct ActiveRecord/SQL query
  end


  def show
    @toy = Toy.find(params[:id])
  end

end

