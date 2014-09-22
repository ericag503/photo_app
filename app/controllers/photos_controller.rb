class PhotosController < ApplicationController

  def index
    @photo = Photo.new
    @photos = Photo.all
    @accounts = Account.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(params_photo)
    if @photo.save
      session[:photo_id] = @photo.id
      flash[:notice] = "Your photo has been saved!"
      redirect_to accounts_path(current_account)
    else
      flash[:notice] = "Ooops YO photo did not save"
      render 'index'
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end
end

private
  def params_photo
    params.require(:photo).permit(:avatar, :account_id)
end
