class LogsController < ApplicationController
  def index
  end

  def new
    @log = Log.new(log_params)
  end

  def create
    @log = Log.new(log_params)
    @log.user = current_user
    if @log.save
      redirect_to user_path
    else 
      render :new
    end
  end

  def destroy
    @log = Log.find(params[:id])
    if @log.destroy
      redirect_to user_path
    else 
      render :destroy
    end
  end

  private

  def log_params
    params.require(:log).permit(%i(diary))
  end

end
