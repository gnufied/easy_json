module EasyJson
  module Helpers
    extend ActiveSupport::Concern

    module ClassMethods
      def metaclass; class << self; self; end; end

      def iattr_accessor *args
        metaclass.instance_eval do
          args.each do |attr|
            define_method(attr) do |*value|
              if value.blank?
                instance_variable_get("@#{attr}")
              else
                instance_variable_set("@#{attr}",*value)
              end
            end
          end
        end

        args.each do |attr|
          class_eval do
            define_method(attr) do
              self.class.send(attr)
            end
            define_method("#{attr}=") do |b_value|
              self.class.send(attr,b_value)
            end
          end
        end
      end # end of method iattr_accessor
    end

  end

end