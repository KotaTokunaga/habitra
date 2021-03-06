class UsersController < ApplicationController


  def confirmation


  end


  def index
    @users = User.all


  end

  def show
    @user = User.find(params[:id])

  end


  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to :action => "show", :id => @user.id
    else
      redirect_to :action => "edit"
    end

  end



  private

  def user_params
   params.require(:user).permit(:username,:email,
     :password,:image,:avatar,:avatar_cache,:user_url,
     :country,:user_introduction,:history)
  end

end
