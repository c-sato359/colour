class Public::CustomersController < ApplicationController
	before_action :authenticate_customer!

  # 投稿データの保存
  def create
    @image = Image.new(image_params)
    @image.customer_id = current_customer.id
    if @image.save
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
    @customer = Customer.new
    @customer = Customer.find(params[:id])
  end

  def index
    @customers = Customer.all
    @customer = current_customer
    @image = Image.new
  end

  def show
    if current_customer.nil?
    redirect_to customer_session_path
    end
    @customer = Customer.find(params[:id])
    @images = @customer.images
    @image = Image.new
  end

  def edit
    @customer = Customerr.find(params[:id])
    unless @customer == current_customer
     redirect_to customer_path(current_customer)
    end
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to customer_path
    else
      render :edit
    end
  end
  
  def destroy
  	current_customer.update(is_deleted: true)
  	reset_session
  #	redirect_to  public_homes_top_path
  end
  
  private
  def customer_params
  	params.require(:customer).permit(:name, :email)
  end
end
