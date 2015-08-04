class ArtistsController < ApplicationController
  #index
  def index
    @artists = Artist.all
  end

  #new
  def new
    @artist = Artist.new
  end

  #create
  def create
    @artist = Artist.create!(artist_params)
    redirect_to artist_path(@artist)
  end

  #show
  def show
    @artist = Artist.find(params[:id])
  end
  #edit
  #update
  #destroy


  private
  def artist_params
    params.require(:artist).permit(:name, :photo_url)
  end




end
