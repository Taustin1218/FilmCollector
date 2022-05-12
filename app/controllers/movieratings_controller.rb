class MovieratingsController < ApplicationController
	def index
		@movieratings = Movierating.all
	end

	def create
		
		movierating = Movierating.new(movierating_params)
		
		if movierating.save
			
			redirect_to "/movieratings"
		else
			
			flash[:errors] = movieratings.errors.full_messages
			
			redirect_to "/movieratings/index"
		end 
end
end
