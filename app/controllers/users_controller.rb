class UsersController < ApplicationController

  before_action :authenticate_user!

  def show
    set_user()
  end



    private

  def set_user
    @user = User.find(current_user.id)
    User.find(current_user.id).stallion_owner = true
  end

  # image is from seed, photo is from cloudinary
  def user_params
    params.require(:user).permit(
    :email,
    :encrypted_password,
    :reset_password_token,
    :reset_password_sent_at,
    :remember_created_at,
    :sign_in_count,
    :current_sign_in_at,
    :last_sign_in_at,
    :current_sign_in_ip,
    :last_sign_in_ip,
    :created_at,
    :updated_at,
    :first_name,
    :last_name,
    :city,
    :postal_code,
    :average_rating,
    :stallion_owner)
  end

end
