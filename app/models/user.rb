class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  has_many :maps
  belongs_to :user_role
  
  def admin?
    self.user_role.name == "admin"
  end
  
  def superadmin?
    self.user_role.name == "superadmin"
  end
  
end
