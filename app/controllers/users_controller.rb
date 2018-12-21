class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @log = Log.new
  end
end