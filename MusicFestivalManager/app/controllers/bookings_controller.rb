class BookingsController < ApplicationController
  before_action :find_booking, :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(performance_id: params[:performance_id], schedule_id: params[:schedule_id])

    if @booking.valid?
      flash[:errors] = nil
      redirect_to schedule_path(@booking.schedule)
    else
      flash[:errors] = @booking.errors.full_messages
      redirect_to schedule_path(@booking.schedule)
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)

    if @booking.valid?
      redirect_to schedule_path(@booking.schedule)
    else
      flash[:errors] = @booking.errors.full_messages
      redirect_to edit_booking_path(@booking)
    end
  end

  def destroy
    @booking.destroy
    redirect_to schedule_path(@booking.schedule)
  end

  def find_friend
    @user = User.find(session[:user_id])
    if User.all_names.include?(params[:friend_name])
      @friend_user = User.find_by(name: params[:friend_name])
      redirect_to share_path(@friend_user.schedule)
    else
      flash[:errors] = ["User does not exist"]
      redirect_to schedule_path(@user.schedule)
    end
  end


  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def find_user
    @user = User.find(session[:user_id])
  end

  # def booking_params
  #   params.require(:booking).permit(:performance_id, :schedule_id)
  # end
end
