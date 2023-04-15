class ImageController < ApplicationController

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

  def edit
  end
  
  def create
    @image = image.new(image_params)
    @image.customer_id = current_customer.id
    @image.save
    redirect_to images_path
  end
  
  def seacrh
    #seach_word = params(:word)
   #@image = image.where("title")line
    #?,"%#{seach_word}%" do 
  end 
    
   
    private
    
  def image_params
    params.require(:Image).permit(:title, :body, :image)
  end
end
