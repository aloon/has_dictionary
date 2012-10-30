  module HasDictionary
    extend ActiveSupport::Concern
 
    included do
    end
 
    module ClassMethods
      def has_dictionary(options = {})
        class_attribute :dic_options

        self.dic_options = options

        define_method(dic_options[:method]) {
          eval "#{dic_options[:dic_class]}.get self.#{dic_options[:field]}"
        }
      end
    end
 
    def squawk(string)
      write_attribute(self.class.yaffle_text_field, string.to_squawk)
    end
 
  end
 
ActiveRecord::Base.send :include, HasDictionary