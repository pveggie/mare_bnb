class StallionsController < ApplicationController
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
    @stallion = Stallion.new(stallion_params)
    if @stallion.save
      redirect_to stallion_path(@stallion.id)
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
