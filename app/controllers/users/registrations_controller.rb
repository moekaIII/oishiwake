class Users::RegistrationsController < Devise::RegistrationsController
   def edit
     super
   end

   def update
     super
   end

   def destroy
     super
   end

   def index
     @users = User.all
   end

   protected

  def after_sign_up_path_for(resource)
    new_session_path(resource_name)
  end

  def after_inactive_sign_up_path_for(resource)
    new_session_path(resource_name)
  end

  def after_update_path_for(resource)
    page_path(id: current_user.id)
  end

end
