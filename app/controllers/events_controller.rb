class EventsController < ApplicationController

  # before_filter get_event_by_name(params[:name]), only[:show, :delete]

  def index
    if user_signed_in?
      @events = Event.where(user_id: current_user.id)
    else
      redirect_to new_user_session_path
    end
  end
  # Takes post request data and creates a new event
  def create
    @event = Event.new event_params
    binding.pry
    if @event.save
      redirect_to @event
    else

    end
  end
  # Renders the events form
  def new
    @event = Event.new
  end
  # Shows specific event
  # myapp.com/event/event-name
  def show
    @event = Event.where(id: params[:id]).first
  end
  def delete
    if @event
      @event.delete
    end
  end

  private
    def get_event_by_name(name)
      @event = Event.where(name: name).first
    end

    def event_params
      params.require(:event).permit(:id, :name)
    end
end
