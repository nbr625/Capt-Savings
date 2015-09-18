class Cruise < ActiveRecord::Base
	has_many :sailings
	has_many :sailing_options, through: :sailings


	
end