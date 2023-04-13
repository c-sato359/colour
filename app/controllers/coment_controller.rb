class ComentController < ApplicationController

  def new
    @coment = Coment.new
  end
  
  def index
    @coment = Coment.new
    @coments = Coments.all
  end

  def edit
    @coment = Coment.find(params[:id])
  end

  def show
    @coment = Coment.find(params[:id])
  end

  def create
    @coment = Coment.new(coment_params)
    @coment.save
      redirect_to image_path
  end

  def edit
    @coment = Coment.find(params[:id])
  end

  def update
    @coment = coment.find(params[:id])
    if @coment.update(coment_params)
       #redirect_to _path
       flash[:success] = "編集に成功しました"
    else
       flash[:denger] = "編集に失敗しました"
       render :edit
    end
  end

private
  def coment_params
    params.require(:coment).permit(:title, :body)
  end
end

