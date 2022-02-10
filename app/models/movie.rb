class Movie < ApplicationRecord
	# validates method specifices that a movie is valid only if
	# a title, duration, rating, and release date are present
	validates :title, :duration, :rating, :release_date, presence: true
end
