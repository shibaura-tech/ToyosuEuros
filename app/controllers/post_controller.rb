class PostController < ApplicationController
  def create
    @post = Post.new(params[:post].permit(:topic_id, :post_message, :post_user_name, :user_id))
    @post.save
    redirect_to topics_show_path(params[:post]['topic_id'])
  end

  def delete
    @post = Post.find(params[:id])
    @post.delete
    redirect_to "/topics/show/#{$topic_id}"
  end
end
