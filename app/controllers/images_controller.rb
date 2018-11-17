class ImagesController < ApplicationController
  before_action :set_image, only: [:destry]
  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @image.user_id = current_user.id
    if @image.save
      redirect_to user_path(current_user.id), notice: "写真を追加しました！"
    else
      render 'new'
    end
  end


  private

  def image_params
    params.require(:image).permit(:image)
  end

  def set_image
    @image = Image.find(params[:id])
  end

end
