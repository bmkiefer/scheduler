class GamesController < ApplicationController

  def show
    
  end

  def index
    @reservations = Reservation.where(:venue_id => params[:venue_id])
    @venue = Venue.find(params[:venue_id])
  end
  
  def new
    # default: render 'new' template
  end

  def create
    
  end

  def edit
    @user = User.find params[:id]
  end

  def update

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User '#{@user.username}' deleted."
    redirect_to home_path
  end

end
