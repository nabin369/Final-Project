class UsersController < ApplicationController

  def show_all
  	@users = User.verified_makers
  end

  def show_details
  	@showcase_user = User.find(params[:id])
    @user = current_user
    redirect_to root_path unless @showcase_user
  end

  def edit_details
  	@user = current_user
    @saved = params[:saved]
    redirect_to root_path unless @user
  end

  def update_details
    @user = current_user
    @user.update_attributes(user_params)
    saved = @user.save
    redirect_to "/edit?#{'saved=true' if saved }"
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile_image, :cohort, :bio)
  end
end