class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @logs = Log.all
    @log = Log.new
  end
end
