class RatingsController < ApplicationController
	def index
		@ratings = Rating.all
	end

	def create
		
		rating = Rating.new(rating_params)
		
		if rating.save
			
			redirect_to "/movieratings"
		else
			
			flash[:errors] = ratings.errors.full_messages
			
			redirect_to "/movieratings/index"
		end 
end
