class CruisesController < ApplicationController
  def index
    respond_to do |format|
      format.json { render json: Cruise.all }
      format.html
    end
  end
end
