class EventsController < ApplicationController

  def show
  @nation = Nation.find(params[:nation_id])
  @events = Events.all
  @event = @events.sample

  respond_to do |format|
    format.html { redirect_to user_nation_path(current_user, @nation) }
  end
end
