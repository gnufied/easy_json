module Api
  class Post
    include EasyJson::JSON
    json_property :id, :title, :content, :assets
    json_property :user, :class => SimpleUser
  end
end

