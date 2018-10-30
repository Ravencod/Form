class UsersController < ApplicationController
  def new
    @user = User.new
  end

                                                  #def for basic form & form_tag

  def create
    @user = User.new(params[:users])
    @user.username = params[:username]
    @user.email = params[:email]
    @user.bio = params[:bio]
    if @user.save
      redirect_to users_new_path
    end
  end
  
                                                  #def for form_for

  #def create
  #  @user = User.new(params[:users])
  #  @user.username = params[:user][:username]
  #  @user.email = params[:user][:email]
  #  @user.bio = params[:user][:bio]
  #  if @user.save
  #    redirect_to users_new_path
  #  end
  #end
end
