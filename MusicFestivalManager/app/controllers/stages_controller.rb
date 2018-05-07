class StagesController < ApplicationController
  before_action :find_stage, only: [:show, :edit, :update, :destroy]

  def index
    @stages = Stage.all
  end

  def show
  end

  def new
    @stage = Stage.new
  end

  def create
    @stage = Stage.create(stage_params)
    if @stage.valid?
      redirect_to @stage
    else
      flash[:errors] = @stage.errors.full_messages
      redirect_to new_stage_path
    end
  end

  def edit
  end

  def update
    @stage.update(stage_params)
    if @stage.valid?
      redirect_to @stage
    else
      flash[:errors] = @stage.errors.full_messages
      redirect_to edit_stage_path(@stage)
    end
  end

  def destroy
    @stage.destroy
    redirect_to stages_path
  end
 
  private
  
  def stage_params
    params.require(:stage).permit(:name, :venue_id)
  end

  def find_stage
    @stage = Stage.find(params[:id])
  end

end
