class Dictionary
	attr_reader :id, :description

	def initialize id, description
         @id = id
         @description = description
    end

    def self.add_item(key,value)
        @hash ||= {}
        @hash[key]=value
    end

    def self.const_missing(key)
        @hash[key]
    end    

    def self.each
        @hash.each {|key,value| yield(key,value)}
    end

    def self.get key=nil
    	if key.nil?
    		status=[]
	        each { |k,v| status << new(v,k[0..-1]) }
	        status
    	else
    		each { |k,v| return new(v,k[0..-1]) if v==key  }
    	end
    	
    end
end