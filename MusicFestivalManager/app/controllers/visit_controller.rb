class VisitsController < ApplicationController
  before_action :find_visit, only: [:show, :edit, :update, :destroy]

  def index
    @visits = Visit.all
  end

  def show
  end

  def new
    @visit = Visit.new
  end

  def create
    @visit = Visit.create(visit_params)

    if @visit.valid?
      redirect_to @visit
    else
      flash[:errors] = @visit.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    @visit.update(visit_params)

    if @visit.valid?
      redirect_to @visit
    else
      flash[:errors] = @visit.errors.full_messages
      render :edit
    end
  end

  def destroy
    @visit.destroy
    redirect_to visits_path
  end


  private

  def find_visit
    @visit = Visit.find(params[:id])
  end

  def method_name
    params.require(:visit).permit(:vendor_id, :schedule_id)
  end

end
