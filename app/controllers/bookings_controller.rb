class BookingsController < ApplicationController

before_action :find_user, only: [:create, :new]
before_action :find_stallion, only: [:create, :new]

  def new
    @booking = Booking.new
    @form_variables = {header: "Add"}
  end

  def create
    @booking = @stallion.bookings.build(bookings_params)
    @booking.user_id = @user.id
    @booking.stallion_owner_id = @stallion.user_id
    if @booking.save && @booking.stallion_owner_id != @booking.user_id
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
  end
end

private

  def bookings_params
    params.require(:booking).permit(:stallion_id, :user_id, :mo_rating, :mo_review, :so_rating, :so_review, :date)
  end

  def find_user
    @user = User.find(current_user.id)
  end

  def find_stallion
    @stallion = Stallion.find(params[:stallion_id])
  end
