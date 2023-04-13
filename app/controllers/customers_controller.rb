class CustomersController < ApplicationController

  def new
    @image = Image.new
  end

  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
    @customer = @image.customer
  end



end