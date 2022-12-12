# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy edit timesheets]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_prams)
    if @user.save
      redirect_to users_path notice: 'the user has been added'
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path, notice: 'The user has been deleted'
  end

  def timesheets
    @timesheets = @user.timesheets
  end

  def show; end

  def edit; end

  def update
    if @user.update(user_prams)
      redirect_to user_path(@user)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_prams
    params.require(:user).permit(:username, :gender, :address, :birthday, :email)
  end
end
