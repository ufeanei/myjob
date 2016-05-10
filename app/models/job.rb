class Job < ActiveRecord::Base
validates :name,  presence: true
validates :email, presence: true

belongs_to :fylke
belongs_to :kommune
belongs_to :user
has_many :job_applications

end

