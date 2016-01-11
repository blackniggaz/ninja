class LoginController < ApplicationController

  def index
    render('login/index')
  end
  def auth

    @user=User.find_by(params[:user])
    if(@user.nil?)
       render('login/forgot')
    else
      session[:username] = @user.username
      session[:id] = @user.id

      flash[:notice] = "#{@user.username} has logged in."
      flash[:data] = "#{@user.email}"
      redirect_to mydata_index_path
    end
  end

  def  test

    puts params
  end
end
