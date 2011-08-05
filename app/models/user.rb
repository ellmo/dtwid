class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :nick, :email, :password, :password_confirmation, :remember_me
  
  has_many :submissions
  has_one :map_author
  belongs_to :user_role
  
  after_create :make_author
  
  def admin?
    self.user_role.name == "admin" or self.superadmin?
  end
  
  def superadmin?
    self.user_role.name == "superadmin"
  end
  
  def make_author
    unless self.map_author
      @author = self.build_map_author
      @author.nick = self.nick
      @author.save
    end
  end
  
end
