class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    @board.user = current_user
    if @board.save
      redirect_to boards_path(@board)
    else
      render new
    end
  end

  def show
    @board = Board.find(params[:id])
    @comment = Comment.all
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    if @board.update(board_params)
      redirect_to boards_path(@board)
    else
      render new
    end
  end

  def destroy
    @board = Board.find(params[:id])

    @board.destroy
    redirect_to boards_path
  end


    private
  def board_params
    params.require(:board).permit(%i(title))
  end

end