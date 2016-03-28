class PagesController < ApplicationController

  # user can view home page without signing up/loggin in.
  skip_before_action :authenticate_user!, only: :home

  def home
  end

# one amazing new comment
# one more amazing new comment

end
