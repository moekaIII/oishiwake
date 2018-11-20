class PagesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @images = @user.images
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to page_path(current_user.id), notice: "写真を削除しました！"
  end
end
