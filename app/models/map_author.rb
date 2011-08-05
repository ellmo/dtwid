class MapAuthor < ActiveRecord::Base
  has_many :submissions
  belongs_to :user
  
  def info
    if self.user
      return "#{self.nick} (registered)"
    else
      return self.nick
    end
  end
    
end
