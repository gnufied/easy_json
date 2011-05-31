require "spec_helper"

ActiveRecord::Base.configurations = {
  'test' => {
    :adapter  => 'sqlite3',
    :encoding => 'utf8',
    :pool => 1,
    :timeout => 5000,
    :database => 'test.sqlite3'
  }
}

ActiveRecord::Base.establish_connection('test')

describe "Json module" do
  before(:each) do
    setup_model
  end
  it "should deserialize activerecord objects" do
    u = User.create(:fullname => "foo", :email => "foo@example.com")
    post = Post.new(:title => "Hey", :content => "Bye", :user_id => u.id)
    post.save

    api_post = Api::Post.new(post)
    data = api_post.to_json
    p data
  end
end
