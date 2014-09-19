class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    @accounts = Account.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(params_photo)
    if @photo.save
      flash[:notice] = "Your photo has been saved!"
      redirect_to accounts_path(current_account)
    else
      flash[:notice] = "Ooops YO photo did not save"
      render 'new'
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end
