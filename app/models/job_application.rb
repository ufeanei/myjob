class JobApplication < ActiveRecord::Base
  belongs_to :user
  belongs_to :job
  has_many :reviews, dependent: :destroy

  validates_uniqueness_of :user_id, scope: :job_id

end