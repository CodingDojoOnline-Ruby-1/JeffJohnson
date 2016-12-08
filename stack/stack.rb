class Stack
	attr_accessor :data_store 
	
	def initialize
		@data_store = []
		@back
		# self 
	end
	def back #getter method
		if data_store.empty?
			@back = 0
		else
			@back=data_store.last
		end			
	end
	def push(val)
		@data_store.push(val)
		self
	end
	def pop
		if data_store.empty?
			return nil
		else
			data_store.pop
		end
	end
end

s=Stack.new

# puts s.back
# s.push(3)
# puts s.back
# puts s.pop
# puts s.back
# puts s.pop
# puts s.back

# s.data_store = [1,2,3,4]
# puts s.data_store.to_s

# s.push(11).push(12)
# puts s.back = 5

# this3 = Stack.new.push(1).push(2).push(3)
# puts this3.pop