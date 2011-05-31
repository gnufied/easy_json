module Api
  class Post
    include EasyJson::JSON
    json_property :id
    json_property :title
    json_property :content
    json_property :user, :class => SimpleUser
    json_property :assets, :as => Array
  end
end

