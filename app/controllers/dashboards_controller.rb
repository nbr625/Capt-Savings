class DashboardsController < ApplicationController

  respond_to :json



  def index
  	@main_board = Dashboard.where(id: 1)
  	respond_to do |format|
      format.json { render json: @main_board.to_json(:include => {:cruises =>
                    {:include => {:sailings =>
                    {:include => :sailing_options}}}}) }
      format.html
    end
  end


end