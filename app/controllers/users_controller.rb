# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  # def create

  # end

  # def user_prams
  #    params.require(:users).permit(:username,:fullname,:age,:gender,:adress,:date,:email)
  # end
end
