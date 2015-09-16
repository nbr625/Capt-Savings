class SailingsController < ApplicationController

	def index
	    respond_to do |format|
        	format.json { render json: Sailing.all }
        	format.html
    	end
    end
    
end