class PasswordController < ApplicationController

   def edit
      @user = User.find params[:id]
   end
   
   def update
      @user = User.find params[:id]

      if @user.password == params[:old_password] then
         @user.password = params[:user][:new_password]
         @user.password_confirmation = params[:user][:new_password_confirmation] 
         @user.update_attributes!(params[:user])
         flash[:notice] = "Password for #{@user.username} has been changed."
         sign_in @user
      else
         flash.now[:error] = "Invalid password authentication. Password unchanged."
     end
     redirect_to user_path(@user)
   end

end
