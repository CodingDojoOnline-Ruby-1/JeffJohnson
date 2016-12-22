class UsersController < ApplicationController
  def index	
  	@users = User.all
  end

  def show
    id = params[:id]
    @user = User.find(id)
    puts "***... in show method with id = #{id}" 	
  end

  def new  	
  end

  def create
	user = User.new( user_params )
  	if user.valid?
  		puts "user valid - saving user"
  		user.save
	  	redirect_to '/'	  	
  	else 
  		flash[:notice] = user.errors.full_messages
  		redirect_to "/users/new" 	
  	end
  end

  def edit
    id = params[:id]
    @user = User.find(id)
  end

  def update
    id = params[:id]
    user = User.find(id)
    puts "In update method - updating user.first_name records"
    user.update( user_params )
    redirect_to users_show_path(:id => id) 
  end
  def delete
    id = params[:id]
    user = User.find(id).delete
    redirect_to '/' 
  end

  private 
  def user_params
   params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
