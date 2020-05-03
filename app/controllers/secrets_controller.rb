class SecretsController < ApplicationController
  def new
  end
  def show
    if session[:name]
      render 'show'
    else
      redirect_to '/sessions/new'
    end
  end
end
