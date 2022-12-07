before_action :set_post, only: %i[ show edit update destroy ]

class UsersController < ApplicationController
   def index
        @users=User.all
   end
end
