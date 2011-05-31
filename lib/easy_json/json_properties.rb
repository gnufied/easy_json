module EasyJson
  class JsonProperties
    attr_accessor :options
    def initialize
      @options = {}
    end

    def add_properties(*args)
      property_options = args.extract_options!
      keys = Array.wrap(args.shift)
      keys.each do |key|
        @options[key] = property_options
      end
    end
    
  end
end