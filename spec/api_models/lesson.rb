module Api
  class Lesson
    representable_property :id
    representable_property :content, :from => :lesson_content
    representable_property :title, :from => :lesson_content
  end
end

