module EasyJson
  class JsonData
    def initialize(data_record)
      @data = {}
      @data_record = data_record
    end

    def get_value(key,property_options)
      value = @data_record.public_send(key)
      klass = property_options[:class]

      if value.is_a?(Array) && klass
        value.each do |data|
          data[key]
        end
      end
    end


  end
end
