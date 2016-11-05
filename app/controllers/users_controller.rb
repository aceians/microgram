class UsersController < ApplicationController
    
  def show
    @user = User.find(params[:id])
  end
  
  def new
      @user = User.new
  end
  
  def create
    @user = User.new(user_params)   
    if @user.save
      log_in @user
      flash[:success] = "Successfully registered!!"
      redirect_to '/login'
      # Handle a successful save.
    else
      render 'new'
    end
  end
  
  private

    def user_params
      params.require(:user).permit(:name, :email, :individualrole, :org, :dept, :password,
                                   :password_confirmation)
    end
end
