class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

  def allartists
    @artists = Artist.all
  end

  #index
  def index
    if current_user
      @artists = current_user.artists
    else
      @artists = Artist.all
    end
  end

  #new
  def new
    @artist = Artist.new
  end

  #create
  def create
    # @artist = Artist.create!(artist_params)
    @artist = current_user.artists.create!(artist_params)
    redirect_to artist_path(@artist)
  end

  #show
  def show
  end

  #edit
  def edit
  end

  #update
  def update

    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  #destroy
  def destroy

    @artist.destroy
    redirect_to artists_path
  end


  private
  def artist_params
    params.require(:artist).permit(:name, :photo_url)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end


end
