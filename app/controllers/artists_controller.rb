class ArtistsController < ApplicationController
  #index
  def index
    @artists = Artist.all
  end
  #new
  #create
  #show
  #edit
  #update
  #destroy


  private
  def artist_params
    params.require(:artist).permit(:name, :photo_url)
  end




end
