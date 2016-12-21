
class TimesController < ApplicationController
  def main
  	time = Time.new

  	@date = time.strftime("%b %-d, %Y")
  	@hour = time.strftime("%H:%M %p")

  	puts "Time outputs:"
  	puts time
  	puts @date
  	puts @hour
  end
end
