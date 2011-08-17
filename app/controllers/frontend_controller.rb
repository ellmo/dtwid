class FrontendController < ApplicationController
  def index
    @news = News.all(:order => 'created_at DESC')
  end
  
  def gallery
    @gallery_images = GalleryImage.all(:order => 'created_at DESC')
  end
  
  def about
  end
  
  def contact
  end
  
end
