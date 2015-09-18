class SailingOption < ActiveRecord::Base
	belongs_to :sailing
	
	after_save :starting_price_update

	def starting_price_update
		sailings = Sailing.all
		sailings.each do |s|
			cheapest = 1000
			s.sailing_options.each do |o|
				if o.price > cheapest
					cheapest = o.price				
				end
			end
			s.starting_price = cheapest
			s.save

		end
	end

end
