class MoviesController < ApplicationController
    def create
        @movie = Movie.create!(params[:movie])
        flash[:notice] = "#{movie.title} was successfully created."
        redirect_to movies_path
    end
    
    def index
        @movies = Movie.all
    end
    
    def show
        id = params[:id]
        @movie = Movie.find(id)
    end
    
    def new
        @movie = Movie.new
        # default: render 'new' template
    end
end