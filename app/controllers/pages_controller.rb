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
    @average_rating = params[:search][:average_rating] if params[:search]
    @country = params[:search][:country] if params[:search]
    @stallions = Stallion.all

    filter_by_category(@category)
    filter_by_breed(@breed)
    filter_by_average_rating(@average_rating)
    filter_by_country(@country)

  end

private

  def filter_by_breed(breed)
    @stallions = @stallions.where(breed: breed) if @breed
     # != ""
  end
  def filter_by_category(category)
    @stallions = @stallions.where(category: category) if @category != ""
  end
  def filter_by_average_rating(average_rating)
    @stallions = @stallions.where(average_rating: average_rating) if @average_rating != ""
  end
  def filter_by_country(country)
    @stallions = @stallions.where(country: country) if @country != ""
  end


end
