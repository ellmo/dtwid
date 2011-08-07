class FrontendController < ApplicationController
  def index
    @news = News.all(:order => :created_at)
  end

end
