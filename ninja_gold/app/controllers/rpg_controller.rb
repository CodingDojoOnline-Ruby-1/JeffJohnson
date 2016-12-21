class RpgController < ApplicationController
	def index
		session[:gold] ||= 0
		session[:log] ||= []
		# puts "session[:gold]= #{session[:gold]}"
		@total_gold = session[:gold]
		@messages = session[:log].reverse
	end
	def farm
		@delta = rand(10..20)
		session[:gold] += @delta
		# puts "farm: delta= #{@delta}"
		time = Time.new		
		session[:log].push("Earned #{@delta} golds from the farm!  (" + time.strftime("%Y/%m/%d %I:%M %p" )+")")
		redirect_to '/'
	end
	def cave
		@delta = rand(5..10)
		session[:gold] += @delta
		@amt_gold=session[:gold]
		# puts "cave: delta= #{@delta}"
		time = Time.new	
		session[:log].push("Earned #{@delta} golds from the cave!  (" + time.strftime("%Y/%m/%d %I:%M %p" )+")")
		redirect_to '/'
	end
	
	def house
		@delta = rand(2..5)
		session[:gold] += @delta
		@amt_gold=session[:gold]
		# puts "house: delta= #{@delta}"
		time = Time.new	
		session[:log].push("Earned #{@delta} golds from the house!  (" + time.strftime("%Y/%m/%d %I:%M %p" )+")")
		redirect_to '/'
	end
	def casino
		@delta = rand(-50..50)
		session[:gold] += @delta
		@amt_gold=session[:gold]
		# puts "casino: delta= #{@delta}"
		time = Time.new	
		if @delta >=0
			session[:log].push("Entered a casino and won #{@delta} golds. Great!  (" + time.strftime("%Y/%m/%d %I:%M %p" )+")")
		else  session[:log].push("Entered a casino and lost #{-@delta} golds. Ouch :(  (" + time.strftime("%Y/%m/%d %I:%M %p" )+")")	
		end			
		redirect_to '/'
	end
end