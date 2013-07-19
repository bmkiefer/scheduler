class ReservationsController < ApplicationController

  def show
    
  end

  def index
    @user = User.find(params[:user_id])
    @reservations = Reservation.where(:user_id => @user.id)
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
     @user = User.find params[:user_id]
    @reservation = Reservation.find(params[:id])
    @request = Request.find_by_user_id_and_reservation_id(params[:user_id],params[:id])

    @new_request = @request
    @new_reservation = @reservation

    @new_request.status = "canceled"
    @new_reservation.user_id = nil
    @new_reservation.status = "Open"
    
    @request.update_attributes!(@new_request.attributes)
    @reservation.update_attributes!(@new_reservation.attributes)  

    redirect_to user_reservations_path(@user)
  end

  def destroy
  end

end