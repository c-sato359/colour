class Public::ImageController < ApplicationController
  
  
  # 投稿データの保存
  def create
    @image = Image.new(image_params)
    @image.customer_id = current_customer.id
    if @image.save!
      redirect_to images_path
    else
      render customer_path(current)
    end
    unless @customer == current_customer
     redirect_to customer_path(current_customer)
    end
    if @customer.save
      redirect_to customer_session_path
    end
  end

  def new
    @image = Image.new
  end

  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
    @customer = @image.customer
    if current_customer.nil?
    redirect_to customer_session_path
    end
    @customer = Customer.find(params[:id])
    @images = @customer.images
    @image = Image.new
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
