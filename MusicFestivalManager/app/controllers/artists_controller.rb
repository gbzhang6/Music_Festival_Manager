class ArtistsController < ApplicationController
  # before_action :find_artist, only: [:show, :index, :edit, :update, :destroy]
  before_action :find_user, only: [:show, :index, :edit, :update, :destroy]

  def index
    @artists = Artist.sort_by_name
  end

  def show
  end

  # def new
  #   @artist = Artist.new
  # end
  #
  # def create
  #   @artist = Artist.create(artist_params)
  #   if @artist.valid?
  #     redirect_to @artist
  #   else
  #     flash[:errors] = @artist.errors.full_messages
  #     redirect_to new_artist_path
  #   end
  # end
  #
  # def edit
  # end
  #
  # def update
  #   @artist.update(artist_params)
  #   if @artist.valid?
  #     redirect_to @artist
  #   else
  #     flash[:errors] = @artist.errors.full_messages
  #     redirect_to edit_artist_path(@artist)
  #   end
  # end
  #
  # def destroy
  #   @artist.destroy
  #   redirect_to artists_path
  # end
  #
  private

  # def artist_params
  #   params.require(:artist).permit(:name, :description)
  # end
  def find_user
    @user = User.find(session[:user_id])
  end

  # def find_artist
  #   @artist = Artist.find(params[:id])
  # end

end
