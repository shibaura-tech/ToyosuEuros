class TopicsController < ApplicationController
  def index
  end

  def list
    @topics = Topic.all
    @new_topic = Topic.new
  end

  def show
    @topic = Topic.find(params[:id])
    @new_post = Post.new(topic_id: params[:id])
    @posts = Post.where(topic_id: params[:id])
    @user_id = current_user.id
  end

  def create
    @topic = Topic.new(params[:topic].permit(:title))
    @topic.save
    redirect_to topics_index_path
  end

  def delete
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_index_path
  end
end
