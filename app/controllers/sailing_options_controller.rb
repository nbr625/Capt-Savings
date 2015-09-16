class SailingOptionsController < ApplicationController
	def index
	    respond_to do |format|
        	format.json { render json: SailingOption.all }
        	format.html
    	end
    end
end
