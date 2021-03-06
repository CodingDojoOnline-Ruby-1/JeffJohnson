class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  before_action :require_correct_user, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
  end

  def create
    user = User.new(user_params)
    puts "create user: #{user.inspect}"
    if user.valid?
      puts "...user valid"
      user.save
      redirect_to "/users/#{user.id}"
    else 
      puts "...user INVLAID"
      flash[:notice] = user.errors.full_messages
      for error in flash[:notice]
        puts "error: #{error}"
      end
      redirect_to "/users/new"  
    end
  end
   
  def show
    id = params[:id]
    @user = User.find(id)
  end

  def edit
    id = params[:id]
    @user = User.find(id)
  end

  def update
    id = params[:id]
    @user = User.find(id)
    if params[:name]
      @user.update_attribute(:name, params[:name])
    end
    if params[:email]
      @user.update_attribute(:email, params[:email])
    end
    redirect_to "/users/#{id}"
  end

  def destroy
    puts "***destroying user***"
    id = params[:id]
    User.find(id).delete
    session[:user_id] = nil
    puts "***redirect_to sessions/new ***"
    redirect_to '/sessions/new'
  end


  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  
end
