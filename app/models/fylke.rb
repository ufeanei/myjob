class Fylke < ActiveRecord::Base
has_many :kommunes
has_many :jobs

end