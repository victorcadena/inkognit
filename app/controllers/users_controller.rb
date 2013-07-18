class UsersController < ApplicationController
  before_filter :logged_in
   def show
     if params[:id].nil? # if there is no user id in params, show current one
       @user = current_user
     else # if there is the user id in params just use it,
          # maybe get 'authorization failed'
       @user = User.find params[:id]
     end
	    @questions = @user.questions
   end

  def logged_in
    authenticate_user!

    @user = current_user
    unless params[:id].nil? # if there is no user id in params, show current one
      @user = User.find(params[:id])
    end
    if current_user.email == @user.email
         show
    else
         render "home/index"
    end

  end

end
