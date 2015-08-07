class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

  def index
    @artists = Artist.all.order('name ASC')
  end

  def myartists
    @artists = current_user.artists.order('name ASC')
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = current_user.artists.create!(artist_params)
    redirect_to artist_path(@artist)
  end

  def show
  end

  def edit
  end

  def update
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

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
