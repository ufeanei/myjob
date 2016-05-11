class Job < ActiveRecord::Base
  attr_accessor :terms_of_service
  
  validates :title,  presence: true, length: {maximum: 90}
  validates :description, presence: true
  validates :payment, numericality: true 
  validates :street_addr, presence: true
  validates :destination_addr, presence: true
  validates :contact_number, presence: true
  validates :kommune_id, presence: true
  validates :fylke_id, presence: true
  validates :terms_of_service, acceptance: {accept: "1"}

  belongs_to :fylke
  belongs_to :kommune
  belongs_to :user
  has_many :job_applications

end

