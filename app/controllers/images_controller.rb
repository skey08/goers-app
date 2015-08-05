class ImagesController < ApplicationController

  #index
  def index
    @images = Image.all
  end

  #new
  def new
    @artist = Artist.find(params[:artist_id])
    @image = Image.new
  end

  #create
  def create
    @artist = Artist.find(params[:artist_id])
    @image = @artist.images.create(image_params)
    redirect_to artist_path(@artist)
  end

  #show
  def show
    @image = Image.find(params[:id])
  end

  #edit
  #update
  #destroy

  private
  def image_params
    params.require(:image).permit(:date, :venue, :location, :photo_url, :artist_id)
  end

end
