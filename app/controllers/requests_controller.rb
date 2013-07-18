class RequestsController < ApplicationController

  def show
    
  end

  def index
    @users = User.all
  end
  
  def new
    @venue = Venue.find(params[:venue_id])
    @reservations = Reservation.where(:venue_id => @venue.id ,:status => 'Open')
    @possible_dates = ['Any']
    @reservations.each do |res|
      @game = Game.find(res.game_id)
      @possible_dates.push(@game.game_time)
    end
    # default: render 'new' template
  end

  def create
    @user = User.find(params[:user_id])
    @venue = Venue.find(params[:venue_id])
    @request_array = params[:request]
    @request_array[:user_id] = @user.id
    Request.create!(@request_array)
    redirect_to user_venue_path(@user,@venue)
  end

  def edit

  end

  def update
    @user = User.find params[:id]
    @user.update_attributes!(params[:user])
    flash[:notice] = "#{@user.username} was successfully updated."
    sign_in @user
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User '#{@user.username}' deleted."
    redirect_to home_path
  end

end
