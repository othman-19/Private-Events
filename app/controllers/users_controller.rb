class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def show
  	@user = User.find_by(id: params[:id])
    @upcoming_events = @user.attended_events.in_future
    @past_events = @user.attended_events.in_past
  end
end
