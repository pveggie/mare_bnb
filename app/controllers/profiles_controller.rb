class ProfilesController < ApplicationController
  def show
    @user = current_user
    @profile = current_user.profile
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
