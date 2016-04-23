class Kommune < ActiveRecord::Base
belongs_to :fylke
has_many :jobs
has_many :users

end