class RequestsController < ApplicationController

  def show
    @request = Request.find(params[:id])
    @user = User.find(@request.user_id)
    @user_routed = User.find(params[:user_id])
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
    if params[:desired_date] != nil
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
     @user = User.find(params[:user_id])
     @request = Request.find(params[:id])
     @venue = Venue.find(@request.venue_id)
     @reservations = Reservation.where(:venue_id => @venue.id ,:status => 'Open')
     @possible_dates = []
     @reservations.each do |res|
      @game = Game.find(res.game_id)
      @possible_dates.push(@game.game_time)
    end


  end

  def update
     if params[:answer][:choice] == 'Accept'
      @request_array = params[:request]
      @request_array[:status] = 'accepted'
      @request = Request.find(params[:id])
      @request.update_attributes!(@request_array)
      @game = Game.where(:game_time => @request.desired_date)

      @reservation = Reservation.find_by_game_id_and_venue_id(@game.id,@request.venue_id)

      @new_reservation = @reservation
      @new_reservation.user_id = @request.user_id
      if @request.purpose == "Business Client"
         @new_reservation.status = "Bus"
      else
         @new_reservation.status = "Dept"
      end

      @reservation.update_attributes!(@new_reservation) 

     else
      @request_array = params[:request]
      @request_array[:status] = 'declined'
      @request = Request.find(params[:id])
      @request.update_attributes!(@request_array)

     end
    redirect_to user_path(params[:user_id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User '#{@user.username}' deleted."
    redirect_to home_path
  end

end
