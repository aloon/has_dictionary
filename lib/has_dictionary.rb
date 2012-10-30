=begin
require 'has_dictionary/has_dictionary'
require 'has_dictionary/dictionary'

ActiveRecord::Base.send( :include, ActiveRecord::Dictionaries )
=end




require 'active_record'
require 'active_support/inflector'

$LOAD_PATH.unshift(File.dirname(__FILE__))

module HasDictionary

  if defined?(ActiveRecord::Base)
    #require 'has_dictionary/has_dictionary'
	require 'has_dictionary/dictionary'
    #ActiveRecord::Base.extend ActsAsVotable::Extenders::Votable
    #ActiveRecord::Base.extend HasDictionary::Dictionary
  end

end