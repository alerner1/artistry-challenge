class ArtistsController < ApplicationController
  before_action :find_artist, only: :show

  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params(:name, :age, :title))
    
    if @artist.valid?
      @artist.save
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end