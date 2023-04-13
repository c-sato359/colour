class FollowersController < ApplicationController

  def index
    @follower = Follwer.new
    @followers = Followers.all
  end

  def edit
    @follower = Follwer.find(params[:id])
  end

  def show
    @follower = Follower.find(params[:id])
  end

  def new
    @Follower.new
  end

  def create
    @follower = Follower.new(genre_params)
    @follower.save
      #redirect_to admin_genres_path
  end

  def edit
    @follower = Follower.find(params[:id])
  end

  def update
    @follower = follower.find(params[:id])
    if @follower.update(follower_params)
       #redirect_to admin_genres_path
       flash[:success] = "編集に成功しました"
    else
       flash[:denger] = "編集に失敗しました"
       render :edit
    end
  end

private
  def follower_params
    params.require(:follower).permit(:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at)
  end
end
end
