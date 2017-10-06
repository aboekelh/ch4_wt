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
    
    def edit
        @movie = Movie.find params[:id]
    end
    
    def update
        @movie = Movie.find params[:id]
        @movie.update_attribues!(params[:movie])
        flash[:notice] = "#{@movie.title} was successfully updated."
        redirect_to_movie_path(@movie)
    end
    
    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        flash[:notice] = "Movie 
        #{@movie.title}' delected."
        redirect_to movies_path
    end
end