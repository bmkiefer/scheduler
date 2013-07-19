class RequestsController < ApplicationController

  def show
    @request = Request.find(params[:id])
    @user = User.find(@request.user_id)
    @user_routed = User.find(params[:user_id])
    @venue = Venue.find(@request.venue_id)
  end

  def index
    @my_requests = Request.where(:user_id => params[:user_id])
  end
  
  def new
    @venue = Venue.find(params[:venue_id])
    @reservations = Reservation.where(:venue_id => @venue.id ,:status => 'Open')
    @possible_dates = []
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
      @request_array[:venue_id] = @venue.id
      @request_array[:status] = 'pending'
      Request.create!(@request_array)
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
     @request = Request.find(params[:id])
     @user = User.find(@request.user_id)
      @venue = Venue.find(@request.venue_id)
     if params[:answer][:choice] == 'Accept'
      @request_array = params[:request]
      @request_array[:venue_id] = @request.venue_id
      @request_array[:user_id] = @user.id
      @request_array[:any_flag] = @request.any_flag
      @request_array[:status] = 'accepted'
      @my_game = Game.find_by_game_time(@request.desired_date)
      
      @reservation = Reservation.find_by_game_id_and_venue_id(@my_game.id,@request.venue_id)

      @reservation.user_id = @request.user_id
      if @request.purpose == "Business Client"
         @reservation.status = "Bus"
      else
         @reservation.status = "Dept"
      end

      @request_array[:reservation_id] = @reservation.id

      @reservation.update_attributes!(@reservation.attributes)
      @request.update_attributes!(@request_array)

     else
      @request_array = params[:request]
      @request_array[:venue_id] = @request.venue_id
      @request_array[:user_id] = @user.id
      @request_array[:any_flag] = @request.any_flag
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
