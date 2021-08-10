class AlbumsController < ApplicationController

  def index
    @albums = Album.order(:title).page(params[:page]).per(11)
    render :index
  end

  def new
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(album_params)
    @album.album_cover_photo.attach(params[:album][:album_cover_photo])
    if @album.save
      flash[:notice] = "album successfully added!"
      redirect_to albums_path
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
    flash[:notice] = "album successfully edited!"
    render :edit
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      flash[:notice] = "album successfully updated!"
      redirect_to album_path
    else
      render :edit
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    flash[:notice] = "album successfully deleted!"
    redirect_to albums_path
  end

  private
    def album_params
      params.require(:album).permit(:title)
    end
end