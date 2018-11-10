class DishesController < ApplicationController
  before_action :set_dish, only:[:show, :update, :destroy, :edit]
  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to dishes_path, notice: "投稿しました"
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @dish.update(dish_params)
      redirect_to dishes_path, notice: "投稿を編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @dish.destroy
    redirect_to dishes_path, notice:"投稿を削除しました！"
  end

  def confirm
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :time, :tip, :comment)
  end

  def set_dish
    @dish = Dish.find(params[:id])
  end

end
