class User < ActiveRecord::Base
  attr_accessor :remember_token, :confirmation_token, :reset_token, :terms

  mount_uploader :image, PictureUploader

  before_save :downcase_email
  before_create :create_confirmation_digest
  
  belongs_to :kommune
  has_many :jobs, dependent: :destroy
  has_many :job_applications, dependent: :destroy
  has_many :reviews, dependent: :destroy
  
  validates :phone,  presence: { message: "må fylles ut"}
  validates :first_name,  presence: { message: "må fylles ut"}
  validates :last_name,  presence: { message: "må fylles ut"}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: { message: "må fylles ut"},
                    format: { with: VALID_EMAIL_REGEX, message: ", Epostaddressen er ugyldig" },
                    uniqueness: { case_sensitive: false }

  has_secure_password

  validates :password, presence: {message: "må fylles ut"}, on: :create, length: { minimum: 6, message: "Passordet må være minst 6 tegn"}, allow_nil: true
  validates :terms, acceptance: {accept: "1", message: 'Du må godta vilkårene og personvernpolicy'}
  validate :image_size
  validates :kommune_id, presence: {message: 'må fylles ut'}


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

 #for slugs
  def slug
    self.first_name.downcase.gsub(" ", "-")  
  end

  def to_param
    "#{slug}-#{id}"
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

    def image_size
    if image.size > 2.megabytes
      errors.add(:image, "må være mindre enn 2 MB.")
    end
  end
end