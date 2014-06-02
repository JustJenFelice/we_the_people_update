module WeThePeopleUpdate
  module Resources
    class User < WeThePeopleUpdate::Resource
      attribute :created, Time
      has_embedded :location
    end
  end
end