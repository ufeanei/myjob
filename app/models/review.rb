class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :job_application

  validates :comment, presence: true 

  validate :must_rate, on: :create
 
  def must_rate
    errors.add(:rating, "you must rate your helper") if self.rating.to_i < 1
  end
end


