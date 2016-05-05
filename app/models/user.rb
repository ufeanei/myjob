class User < ActiveRecord::Base
  attr_accessor :remember_token, :confirmation_token, :reset_token

  before_save :downcase_email
  before_create :create_confirmation_digest
  
  belongs_to :kommune
  has_many :jobs
  has_many :job_applications

  has_secure_password

#used to create the digest of any string
def self.digest(string) 
  BCrypt::Password.create(string, cost: 8)
end

# use this to generate any random url safe base64 token
def self.new_token
  SecureRandom.urlsafe_base64
end

#this method sets a remeber_token then inserts its digest in the remember_column of a user 
def remember
  self.remember_token = User.new_token  
  update_attribute(:remember_digest, User.digest(remember_token))  
end

#this generalised method checks whether the token your provide corresponds to the digest stored. if there is a mismatch it return false
#the digest.nil? part is crucial for those who sign in many diiferent browsers on the same machine. 
# imagine user signs out in firefox, close one chrome browser then tries to use the last browser to request unauthorized pages.

def authenticated?(attribute, token)
  digest = self.send("#{attribute}_digest")
  return false if digest.nil?                        
                                                       
  BCrypt::Password.new(digest).is_password?(token)
end

def forget
  update_attribute(:remember_digest, nil)
end

# create and sets a reset_digest, reset_token virtual attribute a
def create_reset_digest
    self.reset_token = User.new_token
    update_attribute(:reset_digest,  User.digest(reset_token))
    update_attribute(:reset_sent_at, Time.zone.now)
end

def password_reset_expired?
  reset_sent_at < 2.hours.ago
end


private

 # Converts email to all lower-case.
  def downcase_email
     self.email = email.downcase
  end

  # Creates and assigns the activation token and digest.
  def create_confirmation_digest
    self.confirmation_token  = User.new_token
    self.confirmation_digest = User.digest(confirmation_token)
  end
   
  





end