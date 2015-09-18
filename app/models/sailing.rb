class Sailing < ActiveRecord::Base
	belongs_to :cruise
	has_many :sailing_options


	
end
