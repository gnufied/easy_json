module Api
  class Post
    include EasyJson::JSON
    json_property :id
    json_property :title
    json_property :content
    json_property :user, :as => SimpleUser
    json_property :posts, :as => Asset
  end
end

