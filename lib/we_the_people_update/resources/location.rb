module WeThePeopleUpdate
  module Resources
    class Location < EmbeddedResource(:city, :state, :zip)
    end
  end
end