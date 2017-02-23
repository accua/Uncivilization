class EventsController < ApplicationController

  def show
    @nation = Nation.find(params[:nation_id])
    @events = Event.all
    @event = @events.sample
    @responses = Response.all
    @response1 = @responses.sample
    @response2 = @responses.sample
    respond_to do |format|
      format.html { redirect_to user_nation_path(current_user, @nation) }
      format.js
    end
  end
end
