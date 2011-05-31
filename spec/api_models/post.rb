module Api
  class Post
    include Representable::JSON
    representable_property :id
    representable_property :title
    representable_property :content
    representable_property :user, :as => SimpleUser
    representable_property :posts, :as => Asset
  end
end

