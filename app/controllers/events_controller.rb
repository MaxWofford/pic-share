class EventsController < ApplicationController
  # before_filter get_event_by_name(params(:name)), only[:show, :delete]
  def index
    if user_signed_in?
      @events = Event.where(user_id: current_user.id)
    else
      redirect_to new_user_session_path
    end
  end
  # Takes post request data and creates a new event
  def create

  end
  # Renders the events form
  def new

  end
  def show
  end
  def delete
    if @event
      @event.delete
    end
  end

  private
    def get_event_by_name(name)
      @event = Event.where(name: name)
    end

    def event_params
      params.require(:event).permit(:id, :name)
    end
end
