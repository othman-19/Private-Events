# frozen_string_literal: true

# Events controller
class EventsController < ApplicationController
  before_action :logged_in_user, only: [:new]

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end

  private

  def event_params
    params.require(:event).permit(:title, :date, :location, :description)
  end

  def logged_in_user
    redirect_to login_path unless logged_in?
  end
end
