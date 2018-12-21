class LogController < ApplicationController
  def index
  end

  def new
    @log = Log.new
  end

  def create
    @log = Log.new(log_params)
    if @log.save
      redirect_to user_path
    else 
      render 'new'
    end
  end

  private
  
  def log_params
    params.require(:log).permit(:diary)
  end

end
