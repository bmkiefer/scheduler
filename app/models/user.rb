class User < ActiveRecord::Base
  has_many :posts, :dependent => :destroy
  has_many :reservations

  #attr_accessible :username,:email,:password,:password_confirmation,:role,:position,:department,:leader
  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates:username,presence:true,length:{maximum:50},uniqueness:{case_sensitive:false} 
  validates:email,presence:true, uniqueness:{case_sensitive:false}
  validates:password,presence:true,length:{minimum:6}
  validates:password_confirmation,presence:true
  
  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end 

