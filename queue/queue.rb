class Queue
	attr_accessor :data_store, :max, :min
	# attr_reader :back  how would this conflict with getter method?

	def initialize
		@data_store = []
		@back=0
		@max =0
		@min =0
	end
	def enqueue(val)
		@data_store[@back] = val
	    if @back == 0
	    	@max = val
	    	@min = val
	    else
	    	if val > @max 
	    	@max = val
		    end
		   	if val < @min
		   		@min = val
		   	end
		end   	
	   	@back += 1
	    self
  	end
  	def back  #getter method (how would this conflict with attr_reader?)
  		if data_store.empty?
			@back = 0
		else
			@back=@data_store[@back-1]
		end			
	end
	def dequeue 
  		if @data_store.empty?
  			nil
    	else
      		@back -= 1
      		val = @data_store.delete_at(0)
      		@min = @data_store.min
      		@max = @data_store.max
      		return val
    	end
  	end
end

# q= Queue.new
# puts q.back
# puts q.dequeue
# q.enqueue(0).enqueue(1).enqueue(2).enqueue(3).enqueue(4).enqueue(7)
# puts q.back
# puts
# puts q.dequeue
# puts q.dequeue
# puts q.back 
# puts q.data_store.to_s
# puts "max and mins"
# puts q.max
# puts q.min