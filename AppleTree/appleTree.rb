class AppleTree
	attr_accessor :age, :height, :apples
	def initialize 
		@age = 0
		@height = 0 #feet
		@apples=0
	end
	def year_gone_by
		@age += 1
		@height += 0.5
		grow_apples
		self
	end
	def pick_apples
		@apples =0
		self
	end

	private
	def grow_apples
		if @age <= 3 or @age >= 11
			@apples = 0
			self
		else
			@apples = 4* @height ** 2
			self
		end
	end
end

# mac = AppleTree.new
# puts "Age: #{mac.age} Height: #{mac.height} apples: #{mac.apples}"
# mac2 = AppleTree.new.year_gone_by.year_gone_by
# puts "Age: #{mac.age} Height: #{mac.height} apples: #{mac.apples}"
# mac.year_gone_by.year_gone_by
# puts "Age: #{mac.age} Height: #{mac.height} apples: #{mac.apples}"
# mac.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by
# puts "Age: #{mac.age} Height: #{mac.height} apples: #{mac.apples}"
# mac.year_gone_by
# puts "Age: #{mac.age} Height: #{mac.height} apples: #{mac.apples}"