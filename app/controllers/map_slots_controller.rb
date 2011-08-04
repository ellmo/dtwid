class MapSlotsController < ApplicationController
  # GET /map_slots
  # GET /map_slots.xml
  def index
    @map_slots = MapSlot.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @map_slots }
    end
  end

  # GET /map_slots/1
  # GET /map_slots/1.xml
  def show
    @map_slot = MapSlot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @map_slot }
    end
  end

  # GET /map_slots/new
  # GET /map_slots/new.xml
  def new
    @map_slot = MapSlot.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @map_slot }
    end
  end

  # GET /map_slots/1/edit
  def edit
    @map_slot = MapSlot.find(params[:id])
  end

  # POST /map_slots
  # POST /map_slots.xml
  def create
    @map_slot = MapSlot.new(params[:map_slot])

    respond_to do |format|
      if @map_slot.save
        format.html { redirect_to(@map_slot, :notice => 'Map slot was successfully created.') }
        format.xml  { render :xml => @map_slot, :status => :created, :location => @map_slot }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @map_slot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /map_slots/1
  # PUT /map_slots/1.xml
  def update
    @map_slot = MapSlot.find(params[:id])

    respond_to do |format|
      if @map_slot.update_attributes(params[:map_slot])
        format.html { redirect_to(@map_slot, :notice => 'Map slot was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @map_slot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /map_slots/1
  # DELETE /map_slots/1.xml
  def destroy
    @map_slot = MapSlot.find(params[:id])
    @map_slot.destroy

    respond_to do |format|
      format.html { redirect_to(map_slots_url) }
      format.xml  { head :ok }
    end
  end
end
