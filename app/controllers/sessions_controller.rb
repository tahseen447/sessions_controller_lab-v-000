class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name]
      redirect_to '/login'
      else
        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'hello'
      end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end

end
