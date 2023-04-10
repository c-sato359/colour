class ImageController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def edit
  end
  
  def seacrh
    seach_word = params(:word)
    @image = image.where("title")
    "%#{seach_word}" do 
    end 
    
  end 
   
   private
  def Image_params
    params.require(:Image).permit(:title, :body, :image)
  end
end

