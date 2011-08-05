class Admin::MapAuthorsController < ApplicationController
  # GET /map_authors
  # GET /map_authors.xml
  def index
    @map_authors = MapAuthor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @map_authors }
    end
  end

  # GET /map_authors/1
  # GET /map_authors/1.xml
  def show
    @map_author = MapAuthor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @map_author }
    end
  end

  # GET /map_authors/new
  # GET /map_authors/new.xml
  def new
    @map_author = MapAuthor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @map_author }
    end
  end

  # GET /map_authors/1/edit
  def edit
    @map_author = MapAuthor.find(params[:id])
  end

  # POST /map_authors
  # POST /map_authors.xml
  def create
    @map_author = MapAuthor.new(params[:map_author])

    respond_to do |format|
      if @map_author.save
        format.html { redirect_to(@map_author, :notice => 'Map author was successfully created.') }
        format.xml  { render :xml => @map_author, :status => :created, :location => @map_author }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @map_author.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /map_authors/1
  # PUT /map_authors/1.xml
  def update
    @map_author = MapAuthor.find(params[:id])

    respond_to do |format|
      if @map_author.update_attributes(params[:map_author])
        format.html { redirect_to(@map_author, :notice => 'Map author was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @map_author.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /map_authors/1
  # DELETE /map_authors/1.xml
  def destroy
    @map_author = MapAuthor.find(params[:id])
    @map_author.destroy

    respond_to do |format|
      format.html { redirect_to(map_authors_url) }
      format.xml  { head :ok }
    end
  end
end
