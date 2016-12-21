class SurveyController < ApplicationController
  def new
  end

  def show
  	if session[:count] == nil
		session[:count] =1
	else
		session[:count] +=1
	end
	@count = session[:count]
	@name = params[:name]
  	@location = params[:location]
  	@language = params[:language]
  	@comment= params[:comment]
  end

  # private 
  # def survey_params
  #  params.require(:survey).permit(:name, :location, :language, :comment)
  # end

end
