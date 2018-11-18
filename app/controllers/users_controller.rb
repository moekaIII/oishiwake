class UsersController < ApplicationController
  before_action :set_user, only:[:show, :pdate, :index]
  before_action :user_check, only:[:edit]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path(@user.id)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @images = @user.images
  end

  def edit
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to user_path(current_user.id), notice: "写真を削除しました！"
  end


  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :place, :password, :password_confirmation, :icon, :about_me, :comment, :image)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_check
    @user_name = User.find(params[:id]).name
    if @user_name == current_user.name
      @user = User.find(params[:id])
    else
      redirect_to new_session_path
    end
  end
end
