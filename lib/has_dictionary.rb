require 'has_dictionary/has_dictionary'
require 'has_dictionary/dictionary'

ActiveRecord::Base.send( :include, ActiveRecord::Dictionaries )