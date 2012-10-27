module ActiveRecord

  module Dictionaries
    
    def self.included( base ) #:nodoc:
      base.send( :extend, ActsMethods )
    end
    
    module ActsMethods #:nodoc:
      
      def has_dictionary(options = {})
        class_attribute :dic_options

        self.dic_options = options

        define_method(dic_options[:method]) {
          eval "#{dic_options[:dic_class]}.get self.#{dic_options[:field]}"
        }
      end

    end
    
  end

  module Base
    
  end
end

