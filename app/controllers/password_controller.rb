class PasswordController < ApplicationController

   def edit
      @user = User.find params[:id]
   end
   
   def update
      #@user = User.find params[:id]
      id = params[:id] # retrieve movie ID from URI route
      @user = User.find(id) # look up movie by unique ID
      #@user.password = params[:user][:old_password]

      if @user && @user.authenticate(params[:user][:old_password])
         @user.password = params[:user][:new_password]
         @user.password_confirmation = params[:user][:new_password_confirmation] 
         @user.update_attributes!(params[:user])
         flash[:notice] = "Password for #{@user.username} has been changed."
         sign_in @user
         redirect_to user_path(@user)
      else
         flash.now[:error] = "Invalid password authentication. Password unchanged."
         render 'edit'
     end
   end

end
