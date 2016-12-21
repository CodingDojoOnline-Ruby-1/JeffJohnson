class PlayController < ApplicationController
	def index
		puts "before check: session[:r_number] defined! (#{session[:r_number]})"
			
		session[:r_number] ||=rand(100)
		session[:guess] ||="wrong"
		session[:guessedNo] ||=0
		
		puts "after: session[:r_number] defined! (#{session[:r_number]})"
		
		@guess = session[:guess]
		@guessNo = session[:guessedNo]
	end
	def guess
		@user_guess=params[:u_guess].to_i	
		puts "user_guess #{@user_guess}"
		if (@user_guess > session[:r_number])
			session[:guess]="high"
		elsif (@user_guess < session[:r_number])
			session[:guess]="low"	
		elsif (@user_guess == session[:r_number])
			@number = @user_guess.to_s
			puts "@user_guess:@number #{@user_guess}:#{@number} "
			session[:guess]="correct"
		end	
		session[:guessedNo]=@user_guess	
		redirect_to '/'
	end
	def reset
		puts "OK again"
		session[:r_number]=rand(100)
		session[:guess]="wrong"
		session[:guessedNo] ||=0
		@guess = session[:guess]
		@guessNo = session[:guessedNo]
		puts "reset: session[:r_number] (#{session[:r_number]})"
		redirect_to '/'
	end
end
