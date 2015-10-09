class ImagesController < ApplicationController
  before_action :set_artist, only: [:new, :create, :edit, :destroy]
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = @artist.images.create(image_params)
    redirect_to artist_path(@artist)
  end

  def show
  end

  def edit
  end

  def update
    @image.update(image_params)
    redirect_to artist_image_path
  end

  def destroy
    @image.destroy
    redirect_to artist_path(@artist)
  end

  private
  def image_params
    params.require(:image).permit(:date, :venue, :location, :photo_url, :artist_id)
  end

  def set_image
    @image = Image.find(params[:id])
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

end
