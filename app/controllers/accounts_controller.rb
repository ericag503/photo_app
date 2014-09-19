class AccountsController < ApplicationController

  def new
    @account = Account.new
  end

  def show
    @account = Account.find(params[:id])
    @accounts = Account.all
  end

  def create
    @account = Account.new(params_account)
    if @account.save
      flash[:notice] = "Account created!"
      redirect_to accounts_path
    else
      render 'new'
    end
  end

  private
    def params_account
      params.require(:account).permit(:username, :password, :password_confirmation)
    end
end
