module Api
  class Asset
    include Representable::JSON
    representable_property :id
    representable_property :url
  end
end
