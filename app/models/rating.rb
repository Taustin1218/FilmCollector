class Rating < ApplicationRecord

	belongs_to :movierating

	validates :movie_id, presence: true
end
