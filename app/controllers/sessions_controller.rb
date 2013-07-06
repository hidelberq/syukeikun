class SessionsController < ApplicationController
  def new
  end

  def create
    if user = User.where(nickname: params[:nickname]).first.try(:authenticate, params[:password])
      self.current_user = user
      redirect_to root_path
    else
      flash.now[:error] = "Authentication error"
      render :new
    end
  end

  def destroy
    self.current_user = nil

    redirect_to root_path
  end
end
