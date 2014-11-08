[![has_dictionary API Documentation](https://www.omniref.com/ruby/gems/has_dictionary.png)](https://www.omniref.com/ruby/gems/has_dictionary)

# has_dictionary Gem

ActiveRecord association with a class-based tableless enumerators.

## install

in Gemfile add:

	gem 'has_dictionary'

and execute:

	$ bundle install

## how it works

Yoy must create a class with the definitions of Enums:

models/status.rb:
```ruby
	class Status < Dictionary
	    self.add_item :NEW, 0
	    self.add_item :GENERATING, 1
	    self.add_item :RUN, 2
	    self.add_item :DELETING, 3
	end
```

In your ActiveRecord class

```ruby
	class MyClass < ActiveRecord::Base
   		attr_accessible :name, :status_id

   		has_dictionary :dic_class=>Status, :field=>:status_id, :method=>'status'
	end
```

now you can:

```ruby
	MyClass.find(1).status
	# returns #<Status:0x00 @id=0, @description="NEW">
	
	MyClass.find(1).status.description
	# returns "NEW"
	
	element = MyClass.find(1)
	element.status_id =  Status::GENERATING
	elements.save
	# this save element.status_id with the value 1

	Status.get
	#returns [#<Status:0x00 @id=0, @description="NEW">, #<Status:0x00 @id=1, @description="GENERATING">, #<Status:0x00 @id=2, @description="RUN">, #<Status:0x00 @id=3, @description="DELETING">] 
```
[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/523c8b815571903a88c84530ccfeb23b "githalytics.com")](http://githalytics.com/aloon/has_dictionary)
