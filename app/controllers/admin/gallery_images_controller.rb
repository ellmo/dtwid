class Admin::GalleryImagesController < ApplicationController
  # GET /admin/gallery_images
  # GET /admin/gallery_images.xml
  def index
    @gallery_images = Admin::GalleryImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gallery_images }
    end
  end

  # GET /admin/gallery_images/1
  # GET /admin/gallery_images/1.xml
  def show
    @gallery_image = Admin::GalleryImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gallery_image }
    end
  end

  # GET /admin/gallery_images/new
  # GET /admin/gallery_images/new.xml
  def new
    @gallery_image = Admin::GalleryImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gallery_image }
    end
  end

  # GET /admin/gallery_images/1/edit
  def edit
    @gallery_image = Admin::GalleryImage.find(params[:id])
  end

  # POST /admin/gallery_images
  # POST /admin/gallery_images.xml
  def create
    @gallery_image = Admin::GalleryImage.new(params[:gallery_image])
    @gallery_image.user = current_user

    respond_to do |format|
      if @gallery_image.save
        format.html { redirect_to([:admin, @gallery_image], :notice => 'Gallery image was successfully created.') }
        format.xml  { render :xml => @gallery_image, :status => :created, :location => @gallery_image }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gallery_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/gallery_images/1
  # PUT /admin/gallery_images/1.xml
  def update
    @gallery_image = Admin::GalleryImage.find(params[:id])

    respond_to do |format|
      if @gallery_image.update_attributes(params[:gallery_image])
        format.html { redirect_to([:admin, @gallery_image], :notice => 'Gallery image was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gallery_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/gallery_images/1
  # DELETE /admin/gallery_images/1.xml
  def destroy
    @gallery_image = Admin::GalleryImage.find(params[:id])
    @gallery_image.destroy

    respond_to do |format|
      format.html { redirect_to(admin_gallery_images_url) }
      format.xml  { head :ok }
    end
  end
end
