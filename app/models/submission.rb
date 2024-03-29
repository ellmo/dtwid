class Submission < ActiveRecord::Base
  belongs_to :map_episode
  belongs_to :map_slot
  belongs_to :map_author
  belongs_to :intended_map_episode, :class_name => "MapEpisode"
  belongs_to :intended_map_slot, :class_name => "MapSlot"
  belongs_to :privacy_level
  
  has_many :images, :class_name => "SubmissionImageLink", :dependent => :destroy
  has_many :comments, :class_name => "SubmissionComment", :dependent => :destroy
  has_many :votes, :dependent => :destroy
  
  accepts_nested_attributes_for :images, :reject_if => :reject_image_links, :allow_destroy => true
  
  before_save :check_if_link_changed
  
  def check_if_link_changed
    if link_updated_at.nil? or self.link_changed?
      link_updated_at = Time.now
    end
  end
  
  def get_css_row_style
    case self.intended_map_episode_id
      when 1 then "kditd_row"
      when 2 then "tsoh_row"
      when 3 then "inferno_row"
      else "tfc_row"
    end
  end
  
  def can_download?(user)
    pl = self.privacy_level.level    
    if pl == 0
      true
    else
      if user
        if pl == 1 or user.admin? or user == self.map_author.user
          true
        else
          if pl < 3 and user.team
            true
          else
            false
          end
        end
      else
        false
      end
    end
  end
  
  def self.ordered_search(column1, order, column2=nil, search_string=nil, episode=nil, user_id=nil, voted=nil)
    order_string = "#{column1} #{order}"
    order_string += ", #{column2} #{order}" if column2
    episode_cond = (episode ? "intended_map_episode_id = #{episode}" : "")
    search_string = "%" + search_string + "%" if search_string
    search_cond = ((search_string.nil? or search_string.blank?) ? "" : '(UPPER(name) LIKE UPPER(?) OR UPPER(map_authors.nick) LIKE UPPER(?))')
    conj = (episode_cond.present? and search_cond.present?) ? " AND " : ""
    if voted
      voted_ids = ""
      if voted == "yes"
        voted_ids = (User.find(user_id).votes.collect {|v| v.submission_id})
      elsif voted == "no"
        voted_ids = (Submission.all.collect {|s| s.id}) - (User.find(user_id).votes.collect {|v| v.submission_id})
      end
      Submission.find_all_by_id(voted_ids,
        :include => :map_author,
        :conditions => [episode_cond + conj + search_cond, search_string, search_string],
        :order => order_string)
    else
      Submission.find(:all,
        :include => :map_author,
        :conditions => [episode_cond + conj + search_cond, search_string, search_string],
        :order => order_string)
    end
  end
  
  def aye_votes
    Vote.count(:conditions => "submission_id=#{self.id} AND points=1" )
    #self.votes.where("points = 1").size
  end
  
  def nay_votes
    Vote.count(:conditions => "submission_id=#{self.id} AND points=-1" )
  end
  
  def reject_image_links(attributed)
    attributed['link'].blank?
  end
end
