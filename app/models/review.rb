class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :job_application

  validates :comment, presence: {message: 'Du må skrive en anmeldelse'} 
  validate :must_rate, on: :create
 
  def must_rate
    errors.add(:rating, "Vennligst, gi minst en stjerne") if self.rating.to_i < 1
  end
end


