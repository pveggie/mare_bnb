class StallionsController < ApplicationController
  def index
    @stallions = Stallion.all
  end

  def show
    @stallion = Stallion.find(params[:id])
  end

  def new
    @stallion = Stallion.new
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
    @stallion = Stallion.find(params[:id])
  end


  def update
  end

  def destroy
  end

  private
  def set_stallion
  end

  def stallion_params

  end
end
