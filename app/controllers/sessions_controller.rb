class SessionsController < ApplicationController
  def new
  end

  def create
    self.current_user = User.where(nickname: params[:nickname]).first

    redirect_to root_path
  end

  def destroy
    self.current_user = nil

    redirect_to root_path    
  end
end
