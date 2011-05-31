module Api
  class Lesson
    include EasyJson::JSON
    json_property :id
    json_property :content, :from => :lesson_content
    json_property :title, :from => :lesson_content
  end
end

