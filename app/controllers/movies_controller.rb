class MoviesController < ApplicationController
	# index method gets called when the movies URL is requested.
	# index method gets mappeed to the movies index.html.erb.
	def index
		# call all method on Movie model class.
		# all method selects all of the data in the movie table
		# and returns the data as an array of objects.
		# store the array of objects in an instance variable.
		# instance variable is available to movies index.html.erb.
		@movies = Movie.all
	end

	# new method gets called when the movies/new URL is requested.
	# new method is mapped to the movies new.html.erb
	def new 
	end

	# create method gets called when the Create button is pushed on
	# the movies new.html.erb.
	def create
	# call constructor of Movie model class giving it the 
		# title, duration, rating, and release parameters input in the movies
		# new.html.erb
		# constructco creates Movie model object which is stored
		# in variable
		movie = Movie.new(movie_params)
		# call save method on Movie object
		# save method inserts the data in the Movie model object
		# into the movie table
		if movie.save
			# if the save method succeeds, request the movies URL
			# which will rendor the movies index.html.erb in the browser
			redirect_to "/movies"
		else
			# get full messages associated with errors
			# store them in a Rails flash object named errors so that
			# the full messages may be displayed in the movies new.html.erb
			flash[:errors] = movie.errors.full_messages
			# if the save method fails, request the movies/new URL
			# which will rendor the movies new.html.erb in the browser
			redirect_to "/movies/new"
		end 
	end

	private
	def movie_params
		# params is a Rails object that gets the specified request
		# parameters
		params.require(:movie).permit(:title, :duration, :rating, :release_date)
	end
end
