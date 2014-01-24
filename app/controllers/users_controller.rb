class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.create(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Usuario creado"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end
  
  # Private!!!
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
end
