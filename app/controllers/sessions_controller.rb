class SessionsController < ApplicationController

  def new
  end

  def create
    account = Account.find_by_username(params[:username])
    if account && account.authenticate(params[:password])
      session[:account_id] = account.id
      flash[:notice] = "TURN UP"
      redirect_to accounts_path
    else
      flash.now.alert = "Name or Password is invalid as the day is long, ok?"
      render 'new'
    end
  end

  def destroy
    session[:account_id] = nil
    redirect_to accounts_path, notice: "Logged out."
  end
end
