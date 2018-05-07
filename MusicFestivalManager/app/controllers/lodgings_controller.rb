class LodgingsController < ApplicationController
  before_action :find_lodging, only: [:show, :edit, :update, :destroy]

  def index
    @lodgings = Lodging.all
  end

  def show
  end

  def new
    @lodging = Lodging.new
  end

  def create
    @lodging = Lodging.create(lodging_params)

    if @lodging.valid?
      redirect_to @lodging
    else
      flash[:errors] = @lodging.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    @lodging.update(lodging_params)

    if @lodging.valid?
      redirect_to @lodging
    else
      flash[:errors] = @lodging.errors.full_messages
      render :edit
    end
  end

  def destroy
    @lodging.destroy
    redirect_to lodgings_path
  end


  private

  def find_lodging
    @lodging = Lodging.find(params[:id])
  end

  def method_name
    params.require(:lodging).permit(:name, :favorite_genre, :arrival_date, :departure_date, :lodging_id)
  end
end
