class CommentsController < ApplicationController
  before_action :set_post

  def create
    Comment.create! params.required(:comment).permit(:content)
    redirect_to @post
  end

  private
  def set_post
    @post = Post.find(params[:post_id])
  end
end
