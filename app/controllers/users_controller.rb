class UsersController < ApplicationController
  
  def index
    @users = User.where(activated: true).paginate(page: params[:page])
  end
    
  def show
    @user = User.find(params[:id])
    redirect_to root_url and return unless @user.activated
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)   
    if @user.save
      UserMailer.account_activation(@user).deliver_now
      flash[:info] = "Please check your email to activate your account."
      redirect_to root_url
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
