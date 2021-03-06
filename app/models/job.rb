class Job < ActiveRecord::Base
  attr_accessor :terms_of_service

  mount_uploader :image, PictureUploader

  validates :category_id, presence: {message: "må velg jobbcategory"}
  validates :title,  presence: { message: "må fylles ut"}
  validates :description, presence: { message: "må fylles ut"}
  validates :payment, numericality: { message: "må være et tall ex. 500, 251"} 
  validates :street_addr, presence: { message: "må fylles ut"}
  
  validates :contact_number, presence: { message: "må fylles ut"}
  validates :kommune_id, presence: { message: "må fylles ut"}
  validates :fylke_id, presence: { message: "må fylles ut"}
  validates :terms_of_service, acceptance: {accept: "1", message: 'Du må godta vilkårene og personvernpolicy'}
  validate :image_size
  validate :destination_addr_presence_for_cat1
  
  belongs_to :category
  belongs_to :fylke
  belongs_to :kommune
  belongs_to :user
  has_many :job_applications, dependent: :destroy



  after_validation :geocode_endpoints
  geocoded_by :origin, latitude: :lat1, longitude: :long1
  geocoded_by :destination, latitude: :lat2, longitude: :long2

  def origin
   if self.kommune && self.fylke
     [street_addr, display_kommune_name, self.fylke.name].compact.join(',')
   end
  end

  def destination
    self.destination_addr
  end


#simple non database slug solution
  def slug
    self.title.downcase.gsub("/", " ").gsub(" ", "-")
  end

  def to_param
    "#{slug}-#{id}"
  end

#we need a method to return just the kommune name for duplicate kommunes.
  def display_kommune_name
      case kommune.name 
      when 'Bø i Nordland' , 'Bø i Telemark'
        return 'Bø'
      when 'Herøy i Møre og Romsdal' , 'Herøy i Nordland'
        return 'Herøy'
      when 'Hole i Akerhus' , 'Hole i Buskerud'
        return 'Hole'
      when 'Nes i Akerhus' , 'Nes i Buskerud'
        return 'Nes'
      when 'Os i Hedmark' , 'Os i Hordaland'
        return 'Os'
      when 'Sande i Møre og Romsdal' , 'Sande i Vestfold'
        return 'Sande'
      when 'Våler i Hedmark' , 'Våler i Østfold'
        return 'Våler'
      else
        return kommune.name
      end
  end


  private

  def image_size
    if image.size > 2.megabytes
      errors.add(:image, "Må være mindre enn 2 MB")
    end
  end

  def destination_addr_presence_for_cat1
    if (category_id == 1) && destination_addr.empty?
      errors.add(:destination_addr, "Må fylles ut destinasjon adresse")
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

