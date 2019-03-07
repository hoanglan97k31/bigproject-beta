class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]
  def index
  end

  def show
    
  end
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "Register success"
      redirect_to users_path
    else
      flash[:success] = "Register failed"
      render :new
    end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
    
  end
  private
  def find_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit :name, :password, :password_confirmation
  end
  
end
