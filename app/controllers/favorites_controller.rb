class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(dish_id: params[:dish_id])
    RequestMailer.request_mail(@request).deliver
    redirect_to dishes_path, notice:"#{favorite.dish.user.name}さんに料理を申し込みました！"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to dishes_path, notice: "#{favorite.dish.user.name}さんの料理をキャンセルしました！"
  end
end
