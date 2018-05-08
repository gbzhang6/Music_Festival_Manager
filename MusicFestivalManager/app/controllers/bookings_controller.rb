class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)

    if @booking.valid?
      redirect_to schedule_path(@booking)
    else
      flash[:errors] = @booking.errors.full_messages
      redirect_to schedule_path(@booking)
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)

    if @booking.valid?
      redirect_to @booking
    else
      flash[:errors] = @booking.errors.full_messages
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end


  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:performance_id, :user_id)
  end
end
