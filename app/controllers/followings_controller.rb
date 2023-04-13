class FollowingsController < ApplicationController
 
  def index
    @following = Follwing.new
    @followingss = Followings.all
  end

  def edit
    @following = Follwing.find(params[:id])
  end

  def show
    @following = Following.find(params[:id])
  end

  def new
    @Following.new
  end

  def create
    @following = Following.new(genre_params)
    @following.save
      #redirect_to admin_genres_path
  end

  def edit
    @following = Following.find(params[:id])
  end

  def update
    @following = following.find(params[:id])
    if @following.update(following_params)
       #redirect_to admin_genres_path
       flash[:success] = "編集に成功しました"
    else
       flash[:denger] = "編集に失敗しました"
       render :edit
    end
  end

private
  def following_params
    params.require(:following).permit(:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at)
  end
end
end

end
