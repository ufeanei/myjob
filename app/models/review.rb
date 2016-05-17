class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :job_application

  validates :comment, presence: true 
end


