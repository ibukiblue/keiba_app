class CommentsController < ApplicationController

  def new
    @comment = Comment.new(comment_params)
  end

  def create
    @board = Board.find(params[:board_id])
    @comment = @board.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to board_path(@board)
    else 
      redirect_to board_path(@board)
    end
  end

  def edit
  end

    private

  def comment_params
    params.require(:comment).permit(%i(comment))
  end

end
