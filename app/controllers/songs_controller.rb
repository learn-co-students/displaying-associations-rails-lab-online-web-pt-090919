class SongsController < ApplicationController
  def index
    @songs = Song.all 
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.artist = Artist.find_or_create_by(artist_params) # Find or create and Artist

    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    @song.update(song_params)

    if @song.save
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    flash[:notice] = "Song deleted." # flash is used to send a message or present an error
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:title)
  end

  def artist_params
    params.require(:artist).permit(:name) # To be able to access the params from Artist
  end
end
