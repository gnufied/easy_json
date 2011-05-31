module EasyJson
  class JsonProperties
    attr_accessor :options
    def initialize
      @options = {}
    end

    def add_properties(*args)
      property_options = args.extract_options!
      args.each do |key|
        @options[key] = property_options
      end
    end

    def each
      options.each {|k,v| yield k,v }
    end
    
  end
end
