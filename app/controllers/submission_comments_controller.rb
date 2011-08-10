class SubmissionCommentsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /submission_comments
  # GET /submission_comments.xml
  def index
    @submission_comments = SubmissionComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @submission_comments }
    end
  end

  # GET /submission_comments/1
  # GET /submission_comments/1.xml
  def show
    @submission_comment = SubmissionComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @submission_comment }
    end
  end

  # GET /submission_comments/new
  # GET /submission_comments/new.xml
  def new
    @submission_comment = SubmissionComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @submission_comment }
    end
  end

  # GET /submission_comments/1/edit
  def edit
    @submission_comment = SubmissionComment.find(params[:id])
  end

  # POST /submission_comments
  # POST /submission_comments.xml
  def create
    @submission_comment = SubmissionComment.new(params[:submission_comment])
    @submission_comment.user = current_user

    respond_to do |format|
      if @submission_comment.save
        format.html { redirect_to @submission_comment.submission }
        #format.html { redirect_to(@submission_comment, :notice => 'Submission comment was successfully created.') }
        format.xml  { render :xml => @submission_comment, :status => :created, :location => @submission_comment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @submission_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /submission_comments/1
  # PUT /submission_comments/1.xml
  def update
    @submission_comment = SubmissionComment.find(params[:id])

    respond_to do |format|
      if @submission_comment.update_attributes(params[:submission_comment])
        format.html { redirect_to(@submission_comment, :notice => 'Submission comment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @submission_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /submission_comments/1
  # DELETE /submission_comments/1.xml
  def destroy
    @submission_comment = SubmissionComment.find(params[:id])
    @submission_comment.destroy

    respond_to do |format|
      format.html { redirect_to @submission_comment.submission }
      #format.html { redirect_to(submission_comments_url) }
      format.xml  { head :ok }
    end
  end
end
