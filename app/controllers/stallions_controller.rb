class StallionsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_user, only: [:create, :new]

  def index
    @stallions = Stallion.all
  end

  def show
    @stallion = Stallion.find(params[:id])
  end


  def new
    @stallion = Stallion.new
    @form_variables = {header: "Add"}
  end


  def create
    @stallion = @user.stallions.build(stallion_params)
    if @stallion.save
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  def edit
    set_stallion
    @form_variables = {header: "Edit"}
  end


  def update
    set_stallion
    @stallion.update(stallion_params)
    redirect_to stallion_path(@stallion.id)
  end

  def destroy
    @stallion = Stallion.find(params[:id])
    @stallion.destroy()
    redirect_to user_path
  end

  private

  def set_stallion
    @stallion = Stallion.find(params[:id])
  end

  # image is from seed, photo is from cloudinary
  def stallion_params
    params.require(:stallion).permit(
      :image,
      :name,
      :date_of_birth,
      :category,
      :breed,
      :town,
      :country,
      :lineage,
      :description,
      :colour,
      :photo,
      :photo_cache)
  end
end

    def find_user
     @user = User.find(current_user.id)
     @user.stallion_owner = true
    end
