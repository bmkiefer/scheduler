class PasswordController < ApplicationController

   def edit
      @user = User.find params[:id]
   end
   
   def update
      #@user = User.find params[:id]
      #@user2 = User.where(:password => 'old_password')
      #@user.update_attributes!(params[:user])
      #flash[:notice] = "Password for #{@user.username} has been changed."
      
      #if  @user2 == @user 
         @user.update_attributes!(params[:user])
         #@user.password = params[:password]
         #@user.password_confirmation = params[:password_confirmation] 
         flash[:notice] = "Password for #{@user.username} has been changed."
     #else
     #    flash.now[:error] = "Invalid password authentication. Password unchanged."
     #end
     redirect_to user_path(@user)
   end

end
