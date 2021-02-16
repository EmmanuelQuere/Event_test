class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :authenticate_creator, only: [:show]
end
