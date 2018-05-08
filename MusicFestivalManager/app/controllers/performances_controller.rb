class PerformancesController < ApplicationController
  before_action :find_performance, only: [:show, :edit, :update, :destroy]

  def index
    @performances = Performance.all
  end

  def show
  end

  # def new
  #   @performance = Performance.new
  # end
  #
  # def create
  #   @performance = Performance.create(performance_params)
  #   if @performance.valid?
  #     redirect_to @performance
  #   else
  #     flash[:errors] = @performance.errors.full_messages
  #     redirect_to new_performance_path
  #   end
  # end

  # def edit
  # end
  #
  # def update
  #   @performance.update(performance_params)
  #   if @performance.valid?
  #     redirect_to @performance
  #   else
  #     flash[:errors] = @performance.errors.full_messages
  #     redirect_to edit_performance_path(@performance)
  #   end
  # end
  #
  # def destroy
  #   @performance.destroy
  #   redirect_to performances_path
  # end

  private

  # def performance_params
  #   params.require(:performance).permit(:title, :artist_id, :stage_id)
  # end

  def find_performance
    @performance = Performance.find(params[:id])
  end

end
