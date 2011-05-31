
module EasyJson
  module JSON
    extend ActiveSupport::Concern
    include EasyJson::Helpers

    included do
      iattr_accessor :json_properties
      iattr_accessor :resource_name
      attr_accessor :data_record
      json_properties(JsonProperties.new())
    end

    module ClassMethods
      def json_property(*args)
        json_properties.add_properties(*args)
      end
    end

    module InstanceMethods
      def to_json(options = {})
        json_data = JsonData.new(data_record)

        json_properties.each do |key,property_options|
          json_data.get_value(key,property_options)
        end
      end

      def initialize(data_record)
        @data_record = data_record
      end
    end

  end
end
