class SubmissionsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]
  load_and_authorize_resource

  # GET /submissions
  # GET /submissions.xml
  def index
    request.parameters.reject! {|p| p=="authenticity_token"}
    if params[:c] and params[:d]
      @submissions = Submission.ordered_search(params[:c], params[:d], params[:c2], params[:s], params[:e])
    else
      @submissions = Submission.ordered_search("link_updated_at", "asc", nil, params[:s], params[:e])
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @submissions }
    end
  end
  
  def search
    para = params[:search].reject! { |k,v| v.blank? }
    para.inspect
    redirect_to submissions_path(para)
  end

  # GET /submissions/1
  # GET /submissions/1.xml
  def show
    @submission = Submission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @submission }
    end
  end

  # GET /submissions/new
  # GET /submissions/new.xml
  def new
    @submission = Submission.new
    3.times { @submission.images.build }
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @submission }
    end
  end

  # GET /submissions/1/edit
  def edit
    @submission = Submission.find(params[:id])
  end

  # POST /submissions
  # POST /submissions.xml
  def create
    @submission = Submission.new(params[:submission])
    @submission.link_updated_at = Time.now
    unless params[:submission][:map_author_id]
      @submission.map_author = current_user.map_author
    end

    respond_to do |format|
      if @submission.save
        format.html { redirect_to(@submission, :notice => 'Submission was successfully created.') }
        format.xml  { render :xml => @submission, :status => :created, :location => @submission }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @submission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /submissions/1
  # PUT /submissions/1.xml
  def update
    @submission = Submission.find(params[:id])

    respond_to do |format|
      if @submission.update_attributes(params[:submission])
        format.html { redirect_to(@submission, :notice => 'Submission was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @submission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /submissions/1
  # DELETE /submissions/1.xml
  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy

    respond_to do |format|
      format.html { redirect_to(submissions_url) }
      format.xml  { head :ok }
    end
  end
  
  def list
    @submissions = Submission.find(:all, :order => sort_order('created_at'))
  end
end
