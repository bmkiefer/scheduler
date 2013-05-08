class User < ActiveRecord::Base
  has_many :transactionlevels, :dependent => :destroy
  has_many :levels, :through => :transactionlevels
  has_many :transactionmissions, :dependent => :destroy
  has_many :missions, :through => :transactionmissions
  has_one :profile, :dependent => :destroy

  attr_accessible :username,:email,:password,:password_confirmation,:role
  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates:username,presence:true,length:{maximum:50},uniqueness:{case_sensitive:false}
  #VALID_EMAIL_REGEX = /\A[w+\‐.]+@[a­‐z\d\­‐.]+\.[a­‐z]+\z/i,, format:{with:VALID_EMAIL_REGEX}, 
  validates:email,presence:true, uniqueness:{case_sensitive:false}
  validates:password,presence:true,length:{minimum:6}
  validates:password_confirmation,presence:true
  #validates_confirmation_of :password
  
  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
  
  #def random_string(len)
   #generate a random password consisting of strings and digits
  # chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
  # newpass = ""
  # 1.upto(len) { |i| newpass << chars[rand(chars.size-1)] }
  # return newpass
   #end
  
  #def send_new_password
  # new_pass = User.random_string(10)
  # self.password = self.password_confirmation = new_pass
  # self.save
  # Notifications.deliver_forgot_password(self.email, self.login, new_pass)
  # end
end 

