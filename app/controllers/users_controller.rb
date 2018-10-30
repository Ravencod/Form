class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:users])
    @user.username = params[:username]
    @user.email = params[:email]
    @user.bio = params[:bio]
    if @user.save
      redirect_to users_new_path
    end
  end
end
