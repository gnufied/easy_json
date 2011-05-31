module LoadModel
  def setup_model
    Post.connection.drop_table('posts') if Post.connection.table_exists?(:posts)
    User.connection.drop_table('users') if User.connection.table_exists?(:users)
    Asset.connection.drop_table('assets') if User.connection.table_exists?(:assets)

    User.connection.create_table :users do |u|
      u.column :fullname, :string
      u.column :email, :string
    end

    Post.connection.create_table :posts do |post|
      post.column :title, :string
      post.column :content, :string
      post.column :user_id, :integer
    end

    Asset.connection.create_table :assets do |asset|
      asset.column :filename, :string
      asset.column :url, :string
    end
  end
end
