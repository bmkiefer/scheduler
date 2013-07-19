class RequestsController < ApplicationController

  def show
    
  end

  def index
    @my_requests = Request.where(:user_id => params[:user_id])
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
    if params[:desired_date] != "Any"
      @user = User.find(params[:user_id])
      @venue = Venue.find(params[:venue_id])
      @request_array = params[:request]
      @request_array[:venue_id] = params[:venue_id]
      @request_array[:user_id] = @user.id
      @request_array[:status] = 'pending'
      Request.create!(@request_array)
    else
      @user = User.find(params[:user_id])
      @venue = Venue.find(params[:venue_id])
      @request_array = params[:request]
      @request_array[:user_id] = @user.id
      @request_array[:desired_date] = nil
      @request_array[:venue_id] = params[:venue_id]
      @request_array[:any_flag] = 'true'
      @request_array[:status] = 'pending'
      Request.create!(@request_array)
    end
    redirect_to user_venue_path(@user,@venue)
  end

  def edit

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
