module Api
  class Asset
    include EasyJson::JSON
    json_property :id
    json_property :url
  end
end
