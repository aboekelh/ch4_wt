class MoviesController < ApplicationController
    def create
        @movie = Movie.create!(params[:movie])
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