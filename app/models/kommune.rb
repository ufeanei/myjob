class Kommune < ActiveRecord::Base
belongs_to :fylke
has_many :jobs

end