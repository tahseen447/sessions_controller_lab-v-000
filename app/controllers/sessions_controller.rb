class SessionsController < ApplicationController
  def new
  end

  def create
    session[:username] = params[:username]
    render :hello
  end

  def destroy
    session.delete :username
  end

end
