# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.name == (params[:session][:name])
      session[:user_id] = user.id
      log_in user
      redirect_to user
    else
      render 'new'
    end
  end

  def destroy
    logout
    redirect_to events_path
  end
end
