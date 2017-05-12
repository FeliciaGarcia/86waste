class City < ApplicationRecord
	has_many :neighborhoods 
	has_many :businesses
end
