class DishesController < ApplicationController
  before_action :set_dish, only:[:show, :update, :destroy]
  before_action :user_check, only:[:edit]
  def index
    @dishes = Dish.all
  end

  def new
    if params[:back]
      @dish = Dish.new(dish_params)
    else
      @dish = Dish.new
    end
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.user_id = current_user.id
    if @dish.save
      redirect_to dishes_path, notice: "投稿しました"
    else
      render 'new'
    end
  end

  def show
    @favorite = current_user.favorites.find_by(dish_id: @dish.id)
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
    @dish = Dish.new(dish_params)
    @dish.user_id = current_user.id
    render :new if @dish.invalid?
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :time, :tip, :comment)
  end

  def set_dish
    @dish = Dish.find(params[:id])
  end

  def user_check
    @dish_id = Dish.find(params[:id]).user_id
    if @dish_id == current_user.id
      @dish = Dish.find(params[:id])
    else
      redirect_to dishes_path
    end
  end
end
