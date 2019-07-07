class SessionsController < ApplicationController
before_action :require_login
skip_before_action :require_login, only: [:new,:create]


  def require_login
    redirect_to '/login' unless session.include? :name
  end

  def show
    session[:name]
    render "show"
  end

  def new

  end

  def create
    if params[:name].nil?
      redirect_to '/login'
    elsif params[:name].length==0
      redirect_to '/login'

    else
      session[:name]=params[:name]
      redirect_to '/show'
    end
    end

    def destroy
      session.delete :name
      redirect_to '/login'
    end
  end
