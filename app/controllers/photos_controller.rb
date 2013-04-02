class PhotosController < ApplicationController
  before_filter :set_album
  before_filter :set_current_user_album
  # GET /photos
  # GET /photos.json
  def index
    @photos = @album.photos.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photos }
    end
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = @album.photos.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    @photo = @cu_album.photos.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @photo = @cu_album.photos.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = @cu_album.photos.new(params[:photo])

    respond_to do |format|
      if @photo.save
        format.html { redirect_to [current_user, @cu_album, @photo], notice: 'Photo was successfully created.' }
        format.json { render json: @photo, status: :created, location: [current_user, @cu_album, @photo] }
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photos/1
  # PUT /photos/1.json
  def update
    @photo = @cu_album.photos.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to [current_user, @cu_album, @photo], notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo = @cu_album.photos.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to user_album_photos_url(current_user, @cu_album) }
      format.json { head :no_content }
    end
  end

  protected

    def set_album
      @user = User.find(params[:user_id])
      @album = @user.albums.find(params[:album_id])
    end

    def set_current_user_album
      @cu_album = current_user.albums.find(params[:album_id])
    end
end
