# frozen_string_literal: true

# comments controller
class CommentsController < ApplicationController
  def create
    @message.find(params[:message_id])
    @comment = @message.comments.create(coment_params)
    @comment.user_id = current_user.id

    if @omment.save
      redirect_to message_path(@message)
    else
      render 'new'
    end
  end

  def new; end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
