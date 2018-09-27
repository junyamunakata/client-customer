class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @comment.ckient
    else
      @comment.client
      render template: "client/show"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @cooment.client
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :client_id)
  end
end
