class SubmissionsController < ApplicationController

  def show
    id = params[:id] # retrieve movie ID from URI route
    @submission = Submission.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index

    @all_ratings = Submission.all_ratings
   
  end

  def new
    # default: render 'new' template
  end

end
