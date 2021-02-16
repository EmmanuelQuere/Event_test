class ApplicationController < ActionController::Base
  include UsersHelper
  add_flash_types :danger, :info, :success, :warning

end
