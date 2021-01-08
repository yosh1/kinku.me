class SessionsController < ApplicationController

  def create
    # todo: email: params[:session][:email].downcaseがスマートではないので書き直す
    user = User.find_by(email: params[:session][:email].downcase)
    # https://www.rubydoc.info/github/plataformatec/devise/Devise/Models/DatabaseAuthenticatable
    if user && user.valid_password?(params[:session][:password])
      log_in(user)                                                  
      redirect_to root_path                                            
    else
      flash.now[:danger] = "Invalid email/password conmbination."
      render "new"
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end