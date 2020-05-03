class SessionsController < ApplicationController
  def new
    if session[:name] && !session[:name].empty?
      redirect_to '/secrets/show'
    else
      redirect_to '/sessions/new'
    end
  end
  def create
    if params[:name] && !params[:name].empty?   
      session[:name] = params[:name]
      redirect_to '/secrets/show'
    else
      redirect_to '/sessions/new'
    end
  end
  def login
    render 'login'
  end
  def destroy
    session[:name] = nil if session[:name]
    redirect_to '/sessions/new'
  end
end
