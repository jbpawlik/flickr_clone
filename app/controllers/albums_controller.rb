class AlbumsController < ApplicationController

  def index
    # @user = User.find(params[:id])
    @albums = Album.order(:title).page(params[:page]).per(11)
    @pictures = Picture.all
    render :index
  end

  def new
    # @user = User.find(params[:id])
    @album = current_user.albums.build
    render :new
  end

  def create
    # User.all
    @album = current_user.albums.new(album_params)
    @album.images.attach(params[:album][:images])
    binding.pry
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
    # # @picture = @album.pictures.new
    # @picture = Picture.find(params[:id])
    @pictures = Picture.all
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

  def like
    @favorite = Album.favorite = true
    @favorite.save!
  end 

  def unfavorite!
    self.favorite = false
    self.save!
  end 

  private
    def album_params
      params.require(:album).permit(:title, :favorite, images: [])
    end
end