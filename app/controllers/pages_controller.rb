class PagesController < ApplicationController

  # user can view home page without signing up/loggin in.
  skip_before_action :authenticate_user!, only: [:home, :filter]

  def home

    @stallions = Stallion.all

  end

# one amazing new comment
# one more amazing new comment

  def filter
    # p params[:search]
    @category = params[:search][:category] if params[:search]
    @breed = params[:search][:breed] if params[:search]
    @stallions = Stallion.all

    if @category != "" && @breed  != ""
      @stallions = Stallion.where(category: @category, breed: @breed)
    elsif @category != ""
      @stallions = Stallion.where(category: @category)
    elsif @breed != ""
      @stallions = Stallion.where(breed: @breed)
    else
      @stallions = Stallion.all
    end
  end
end
