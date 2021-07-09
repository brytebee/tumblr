class CommentsController < ApplicationController
  
  def new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:name, :body))

    # if @comment.save
      redirect_to post_path(@post)
    # else
    #   render 'new'
    # end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy

    redirect_to post_path(@post)
  end
end
