class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :nick, :email, :password, :team,
    :password_confirmation, :remember_me
  
  has_many :submissions
  has_many :news
  has_many :comments, :class_name => "SubmissionComment"
  has_many :gallery_images
  has_many :votes, :dependent => :destroy
  has_one :map_author
  belongs_to :user_role
  
  validates_uniqueness_of :nick
  
  after_create :make_author
  after_update :update_author
  
  def self.find_for_database_authentication(conditions={})
    self.find_by_nick conditions[:email] or
    self.find_by_email conditions[:email]
  end
  
  def registered?
    self.id
  end  
  
  def admin?
    self.user_role.name == "admin" or self.superadmin?
  end
  
  def superadmin?
    self.user_role.name == "superadmin"
  end
  
  def can_vote_on_map?(sub_id)
    return !votes.find_by_submission_id(sub_id)
  end
  
  def make_author
    unless self.map_author
      @author = self.build_map_author
      @author.nick = self.nick
      @author.save
    end
  end
  
  def update_author
    if self.map_author
      self.map_author.update_attribute :nick, self.nick
    end
  end
  
end
