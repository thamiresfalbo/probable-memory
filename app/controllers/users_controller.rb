class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[index new create]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(current_user.id)
  end

  # TODO: Fix user registration
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice: 'User was successfully created.'
    else
      render :new, status: :unprocessable_entity, notice: 'An error was occurred.'
    end
  end

  def update
    @user = User.find(current_user.id)

    if @user.update(user_params)
      redirect_to :dashboard, notice: 'User was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
