class PicturesController < ApplicationController

  def new
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.new
    render :new
  end

  def create
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.new(picture_params)
    @picture.image.attach(params[:picture][:image])
    if @picture.save
      flash[:notice] = "picture successfully added!"
      redirect_to album_path(@album)
    else
      render :new
    end
  end

    def show 
      @album = Album.find(params[:album_id])
      @picture = Picture.find(params[:id])
      render :show
    end

    def edit
      @album = Album.find(params[:album_id])
      @picture = Picture.find(params[:id])
      render :edit
    end

    def update
      @picture = Picture.find(params[:id])
      if @picture.update(picture_params)
        flash[:notice] = "picture successfully updated!"
        redirect_to album_picture_path(@picture.album)
      else
        @album = Album.find(params[:album_id])
        render :edit
      end
    end

    def destroy
      @picture = Picture.find(params[:id])
      @picture.destroy
      flash[:notice] = "picture successfully deleted!"
      redirect_to album_path(@picture.album)
    end

  private
    def picture_params
      params.require(:picture).permit(:album_id, image: [])
    end
end
