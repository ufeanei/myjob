class Job < ActiveRecord::Base
  attr_accessor :terms_of_service, :image_cache

  mount_uploader :image, PictureUploader
  
  validates :title,  presence: true, length: {maximum: 90}
  validates :description, presence: true
  validates :payment, numericality: true 
  validates :street_addr, presence: true
  validates :destination_addr, presence: true
  validates :contact_number, presence: true
  validates :kommune_id, presence: true
  validates :fylke_id, presence: true
  validates :terms_of_service, acceptance: {accept: "1"}
  validate :image_size

  belongs_to :fylke
  belongs_to :kommune
  belongs_to :user
  has_many :job_applications



  after_validation :geocode_endpoints
  geocoded_by :origin, latitude: :lat1, longitude: :long1
  geocoded_by :destination, latitude: :lat2, longitude: :long2

  def origin
     [street_addr, self.kommune.name, self.fylke.name].compact.join(',')
  end

  def destination
    self.destination_addr
  end


  def slug
    self.title.downcase.gsub(" ", "-")  
  end

  def to_param
    "#{slug}-#{id}"
  end




  private

  def image_size
    if image.size > 2.megabytes
      errors.add(:image, "should be less than 2MB")
    end
  end

  def geocode_endpoints
    if :street_addr_changed?
      geocoded = Geocoder.search(origin).first
      if geocoded
        self.lat1 = geocoded.latitude
        self.long1 = geocoded.longitude
      end
    end
    # Repeat for destination
    if :destination_addr_changed?
      geocoded = Geocoder.search(destination).first
      if geocoded
        self.lat2 = geocoded.latitude
        self.long2 = geocoded.longitude
      end
    end
  end
end

