class SessionsController < ApplicationController

  def new
  end

  def create
    account = Account.find_by_username(params[:username])
    if account && account.authenticate(params[:password])
      session[:account_id] = account.id
      redirect_to accounts_path notice: "TURN UP!"
    else
      flash.now.alert = "Name or Password is invalid as the day is long, ok?"
      render 'new'
    end
  end

  def destroy
    session[:username_id] = nil
    redirect_to accounts_path, notice: "Logged out."
  end
end
