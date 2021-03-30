class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :lastname, :age))
    if @user.save
      flash[:notice] = "Great! a new user has been created."
      redirect_to @user
    else
      render 'new'
    end
  end
end
