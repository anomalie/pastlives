class UsersController < ApplicationController

  def index
    @user = User.all
    @quotes = Story.where(category: "quote").shuffle
    @stories = Story.where(category: "story").shuffle
    @groups = Group.all.includes(:stories)
     
  end

  def show
  end

  def new
     @user = User.new
  end

  def create
      @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = ["You've successfully created an account"]
    
      redirect_to('/')
    else
      flash[:danger] = ["Please Try Again"]
      redirect_to('/')
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


private 
  def user_params
  params.require(:user).permit(:first_name,:last_name,:email, :password, :password_confirmation)
  end

end


