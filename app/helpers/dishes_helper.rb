module DishesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_dishes_path
    elsif action_name == 'edit'
      dish_path
    end
  end
end
