class AlbumsController < ApplicationController
  before_filter :set_user
  # GET /albums
  # GET /albums.json
  def index
    @albums = @user.albums

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @albums }
    end
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @album = @user.albums.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @album }
    end
  end

  # GET /albums/new
  # GET /albums/new.json
  def new
    @album = current_user.albums.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @album }
    end
  end

  # GET /albums/1/edit
  def edit
    @album = current_user.albums.find(params[:id])
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = current_user.albums.new(params[:album])

    respond_to do |format|
      if @album.save
        format.html { redirect_to [current_user, @album], notice: 'Album was successfully created.' }
        format.json { render json: @album, status: :created, location: [current_user, @album] }
      else
        format.html { render action: "new" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /albums/1
  # PUT /albums/1.json
  def update
    @album = current_user.albums.find(params[:id])

    respond_to do |format|
      if @album.update_attributes(params[:album])
        format.html { redirect_to [current_user, @album], notice: 'Album was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album = current_user.albums.find(params[:id])
    @album.destroy

    respond_to do |format|
      format.html { redirect_to user_albums_url(current_user) }
      format.json { head :no_content }
    end
  end

  protected

    def set_user
      @user = User.find(params[:user_id])
    end
end
