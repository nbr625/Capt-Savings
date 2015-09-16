class Dashboard < ActiveRecord::Base
	has_many :cruises
	has_many :sailings, through: :cruises
	has_many :sailing_options, through: :sailings






	


end
