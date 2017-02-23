class NationsController < ApplicationController
  def welcome
    if current_user && !current_user.nations.any?
      redirect_to new_user_nation_path(current_user)
    end
  end

  def index
    @nations = current_user.nations.all
  end

  def new
    @user = current_user
    @land_type_array = ["Island", "Mountains", "Desert", "Forest", "Coastal", "Grasslands"]
    @user_land_type = ""
    @user_land_type.concat(@land_type_array.sample)
    @nation = @user.nations.new
  end

  def create
    @user = current_user
    @nation = @user.nations.new(nation_params)
    if @user.save
      @nation.assign_values
      redirect_to user_nation_path(@user, @nation)
    else
      render :new
    end
  end

  def show
    @user = current_user
    @nation = Nation.find(params[:id])
  end

  def edit
    @user = current_user
    @nation = Nation.find(params[:id])
    @events = Event.all
    @event = @events.sample
    @responses = @event.responses.all
    @response1 = @responses[0]
    @response2 = @responses[1]
    @response3 = @responses[2]
    respond_to do |format|
      format.html { redirect_to user_nation_path(current_user, @nation) }
      format.js
    end
  end

  def update
    @nation = Nation.find(params[:id])
    @response = Response.find(params["response"])
    @nation.update_nation(@response, @nation)
    if @nation.save
      respond_to do |format|
        format.html { redirect_to user_nation_path(current_user, @nation) }
        format.js
      end
    end
  end

private

  def nation_params
    params.require(:nation).permit(:nation_name, :economy_type, :religion, :basic_geography)
  end
end
