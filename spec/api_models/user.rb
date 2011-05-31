module Api
  class User
    include EasyJson::JSON
    json_property :fullname
    json_property :email
  end
end

module Api
  class SimpleUser
    include EasyJson::JSON
    resource_name "user"
    json_property :fullname
  end
end

