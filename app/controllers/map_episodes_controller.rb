class MapEpisodesController < ApplicationController
  # GET /map_episodes
  # GET /map_episodes.xml
  def index
    @map_episodes = MapEpisode.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @map_episodes }
    end
  end

  # GET /map_episodes/1
  # GET /map_episodes/1.xml
  def show
    @map_episode = MapEpisode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @map_episode }
    end
  end

  # GET /map_episodes/new
  # GET /map_episodes/new.xml
  def new
    @map_episode = MapEpisode.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @map_episode }
    end
  end

  # GET /map_episodes/1/edit
  def edit
    @map_episode = MapEpisode.find(params[:id])
  end

  # POST /map_episodes
  # POST /map_episodes.xml
  def create
    @map_episode = MapEpisode.new(params[:map_episode])

    respond_to do |format|
      if @map_episode.save
        format.html { redirect_to(@map_episode, :notice => 'Map episode was successfully created.') }
        format.xml  { render :xml => @map_episode, :status => :created, :location => @map_episode }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @map_episode.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /map_episodes/1
  # PUT /map_episodes/1.xml
  def update
    @map_episode = MapEpisode.find(params[:id])

    respond_to do |format|
      if @map_episode.update_attributes(params[:map_episode])
        format.html { redirect_to(@map_episode, :notice => 'Map episode was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @map_episode.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /map_episodes/1
  # DELETE /map_episodes/1.xml
  def destroy
    @map_episode = MapEpisode.find(params[:id])
    @map_episode.destroy

    respond_to do |format|
      format.html { redirect_to(map_episodes_url) }
      format.xml  { head :ok }
    end
  end
end
