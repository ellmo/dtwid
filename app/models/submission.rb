class Submission < ActiveRecord::Base
  belongs_to :map_episode
  belongs_to :map_slot
  belongs_to :map_author
  belongs_to :intended_map_episode, :class_name => "MapEpisode"
  belongs_to :intended_map_slot, :class_name => "MapSlot"
  
  has_many :images, :class_name => "SubmissionImageLink", :dependent => :destroy
  
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
  
  def reject_image_links(attributed)
    attributed['link'].blank?
  end
end
