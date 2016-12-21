class RandomWordController < ApplicationController
	def index
		if session[:count] == nil
		session[:count] =1
		else
			session[:count] +=1
		end
		@count = session[:count]
		@word= (0...14).map { ('a'..'z').to_a[rand(26)] }.join.upcase	
	end	
end
