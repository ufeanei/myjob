class Job < ActiveRecord::Base
belongs_to :fylke
belongs_to :kommune
belongs_to :user
has_many :job_applications

end

