class Town < ActiveRecord::Base
  
  before_validation :getCoordinates
  
  private
  def getCoordinates
    places = Nominatim.search(name).limit(1)
    self.lat = places.first.lat
    self.lon = places.first.lon
  end
end
