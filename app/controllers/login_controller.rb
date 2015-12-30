class LoginController < ApplicationController

  def index
    render('login/index')
  end
  def auth
puts params[:user]
    @user=User.find_by(params[:user])
    if(@user.nil?)
      render('login/forgot')
    else

      redirect_to users_path
    end
  end
end
