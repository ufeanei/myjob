class User < ActiveRecord::Base
belongs_to :kommune
has_many :jobs
has_many :job_applications

end