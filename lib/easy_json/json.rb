
module EasyJson
  module JSON
    extend ActiveSupport::Concern
    include EasyJson::Helpers

    included do
      iattr_accessor :json_properties
      iattr_accessor :resource_name
      json_properties(JsonProperties.new())
    end

    module ClassMethods
      def json_property(*args)
        json_properties.add_properties(*args)
      end
    end

    module InstanceMethods
    end
  end
end
